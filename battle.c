#include <stdlib.h>
#include <stdio.h>
#include<time.h>
#include "myLib.h"
#include "battle.h"
#include "battleScreen.h"
#include "cards.h"

int currentCardsCols[4] = {15, 65, 115, 165};
int currentCardsRow = 101;

int gameOver;
int gameWon;
int bossBattle;
int cheatOn;

int cardsRemaining;

enum {PLAYERTURN, ENEMYTURN, WAITING};
int battleState;

//indices of player deck
int currentDeck[4];

Player player;
Enemy enemy;

// Text Buffer
char buffer[200];

//card stuff
#define CARD_WIDTH 39
#define CARD_HEIGHT 51

int masterDeck[10][12] = {{16, 0, 1, 7, 0, 0, 0, 0, 0, 0, 0, 10},
                          {0, 0, 1, 0, 5, 0, 0, 0, 0, 0, 0, 8},
                          {24, 0, 2, 19, 0, 0, 0, 0, 0, 0, 0, 33},
                          {8, 0, 2, 0, 15, 0, 0, 0, 0, 0, 0, 30},
                          {16, 8, 1, 0, 0, 1, 0, 0, 0, 0, 0, 21},
                          {8, 8, 1, 0, 0, 0, 1, 0, 0, 0, 0, 18},
                          {0, 8, 1, 0, 0, 0, 0, 1, 0, 0, 0, 25},
                          {24, 16, 1, 0, 0, 0, 0, 0, 1, 0, 0, 31},
                          {24, 8, 0, 0, 0, 0, 0, 0, 0, 1, 0, 58},
                          {24, 24, 0, 0, 0, 0, 0, 0, 0, 0, 1, 65}};

enum {FIRE1, BLOCK1, FIRE2, BLOCK2, BOOST_FIRE, BREAK_FIRE, BOOST_BLOCK, BREAK_BLOCK,
      REDO, ENERGY};
enum {SHEET_COL, SHEET_ROW, AP_COST, DMG, BLOCK, DMG_UP,
      DMG_DOWN, BLOCK_UP, BLOCK_DOWN, REDO_ON, ENERGY_ON, COST};

int playerHealthOAM[16];
int playerBlockOAM[5];
int enemyHealthOAM[16];
int enemyBlockOAM[5];
int deckOAM[4];
int actionPointsOAM[5];

void initBattle() {
    player.block = 0;
    hideSprites();
    int enemyHealth;
    if (cheatOn == 1) {
        enemyHealth = 5;
    } else if (bossBattle == 1) {
        enemyHealth = 80;
    } else {
        enemyHealth = 55;
    }
    Enemy newEnemy = {.health = enemyHealth};
    player.actionPoints = 3;
    for (int i = 0; i < player.deckLength; i++) {
        player.deck[i].used = 0;
    }
    enemy = newEnemy;
    battleState = PLAYERTURN;
    gameOver = 0;
    gameWon = 0;

    player.selector.oamIndex = getOAMIndex();
    player.shipOAMIndex = getOAMIndex();

    for (int i = 0; i < 16; i++) {
        playerHealthOAM[i] = getOAMIndex();
        enemyHealthOAM[i] = getOAMIndex();
        if (i < 5) {
            playerBlockOAM[i] = getOAMIndex();
            enemyBlockOAM[i] = getOAMIndex();
            actionPointsOAM[i] = getOAMIndex();
            if (i < 4) {
                deckOAM[i] = getOAMIndex();
            }
        }
    }
    newHand();
    drawPlayerStatus();
    drawEnemyStatus();
}

void updateBattle() {
    if (battleState == PLAYERTURN) {
        if (BUTTON_PRESSED(BUTTON_A)) {
            checkSelector();
        }

        if (BUTTON_PRESSED(BUTTON_B)) {
            battleState = ENEMYTURN;
            player.actionPoints = 3;
            newHand();
        }

        if (player.actionPoints == 0 || cardsRemaining == 0) {
            battleState = ENEMYTURN;
            player.actionPoints = 3;
            newHand();
        }
    }

    if (battleState == ENEMYTURN) {
        int damage = 20;
        if (bossBattle == 1) {
            damage += 5;
        }
        if (player.block - damage < 0) {
            player.block = 0;
            player.health += (player.block - damage);
        } else {
            player.block -= damage;
        }
        enemy.block += 5;
        /* enemy becomes more defensive at low health
        if (enemy.health <= 30) {
            enemy.block += 5;
        }*/
        battleState = PLAYERTURN;
        drawBlockMeter();
        drawPlayerStatus();
        drawEnemyStatus();
    }

    //selector movement
    if (BUTTON_HELD(BUTTON_RIGHT) && player.selector.screenCol < 238 - player.selector.width) {
        player.selector.screenCol += player.selector.dCol;
    }
    if (BUTTON_HELD(BUTTON_LEFT) && player.selector.screenCol > 2) {
        player.selector.screenCol -= player.selector.dCol;
    }
    if (BUTTON_HELD(BUTTON_UP) && player.selector.screenRow > 2) {
        player.selector.screenRow -= player.selector.dRow;
    }
    if (BUTTON_HELD(BUTTON_DOWN) && player.selector.screenRow < 158 - player.selector.height) {
        player.selector.screenRow += player.selector.dRow;
    }

    if (player.health <= 0) {
        gameOver = 1;
    }

    if (enemy.health <= 0) {
        gameWon = 1;
    }
}

void newHand() {
    //rand() % player.deckLength;
    int randoms[4];
    int randomsLen = 0;
    int rejected;
    int randIndex;
    cardsRemaining = 4;
    while (randomsLen < 4) {
        rejected = 0;
        randIndex = rand() % player.deckLength;
        for (int i = 0; i < randomsLen; i++) {
            if (randIndex == randoms[i]) {
                rejected = 1;
            }
        }
        if (rejected == 0) {
            randoms[randomsLen] = randIndex;
            randomsLen++;
        }
    }
    currentDeck[0] = randoms[0];
    currentDeck[1] = randoms[1];
    currentDeck[2] = randoms[2];
    currentDeck[3] = randoms[3];
    //currentDeck[0] = rand() % player.deckLength;

    for (int i = 0; i < player.deckLength; i++) {
        player.deck[i].used = 0;
    }
    drawHand();
}

void drawBattle() {
    //draw selector
    shadowOAM[player.selector.oamIndex].attr0 = (player.selector.screenRow & ROWMASK) | ATTR0_REGULAR | ATTR0_SQUARE | ATTR0_4BPP;
    shadowOAM[player.selector.oamIndex].attr1 = (player.selector.screenCol & COLMASK) | ATTR1_SMALL;
    shadowOAM[player.selector.oamIndex].attr2 = ATTR2_TILEID(player.selector.sheetRow, player.selector.sheetCol);
}

void drawPlayerStatus() {
    int sheetCol = 5;
    if (player.health <= 20) {
        sheetCol = 6;
    } else if (player.health <= 50) {
        sheetCol = 7;
    }

    int oamIndex;
    for (int i = 0; i < 16; i++) {
        oamIndex = playerHealthOAM[i];
        if (player.health > i*5) {
            //draw health meter
            shadowOAM[oamIndex].attr0 = (68 & ROWMASK) | ATTR0_REGULAR | ATTR0_TALL | ATTR0_4BPP; //10+i
            shadowOAM[oamIndex].attr1 = ((25 + (i*5)) & COLMASK) | ATTR1_TINY;
            shadowOAM[oamIndex].attr2 = ATTR2_TILEID(20, sheetCol);
        } else {
            shadowOAM[oamIndex].attr0 = ATTR0_HIDE;
        }
    }
}

void drawBlockMeter() {
    int oamIndex;
    for (int i = 0; i < 5; i++) {
        oamIndex = playerBlockOAM[i];
        if (player.block > i*6) {
            //draw block meter
            shadowOAM[oamIndex].attr0 = (79 & ROWMASK) | ATTR0_REGULAR | ATTR0_TALL | ATTR0_4BPP; //26+i
            shadowOAM[oamIndex].attr1 = ((23 + (i*5)) & COLMASK) | ATTR1_TINY;
            shadowOAM[oamIndex].attr2 = ATTR2_TILEID(20, 8);
        } else {
            shadowOAM[oamIndex].attr0 = ATTR0_HIDE;
        }
    }
}

void drawEnemyStatus() {
    int sheetCol = 5;
    if (enemy.health <= 20) {
        sheetCol = 6;
    } else if (enemy.health <= 50) {
        sheetCol = 7;
    }
    int oamIndex;
    for (int i = 0; i < 16; i++) {
        oamIndex = enemyHealthOAM[i];
        if (enemy.health > i*5) {
            //draw enemy health meter
            shadowOAM[oamIndex].attr0 = (68 & ROWMASK) | ATTR0_REGULAR | ATTR0_TALL | ATTR0_4BPP; //31+i
            shadowOAM[oamIndex].attr1 = ((205 - (i*5)) & COLMASK) | ATTR1_TINY;
            shadowOAM[oamIndex].attr2 = ATTR2_TILEID(20, sheetCol);
        } else {
            shadowOAM[oamIndex].attr0 = ATTR0_HIDE;
        }
    }
    for (int i = 0; i < 5; i++) {
        oamIndex = enemyBlockOAM[i];
        if (enemy.block > i*6) {
            //draw enemy block meter
            shadowOAM[oamIndex].attr0 = (79 & ROWMASK) | ATTR0_REGULAR | ATTR0_TALL | ATTR0_4BPP; //47+i
            shadowOAM[oamIndex].attr1 = ((207 - (i*5)) & COLMASK) | ATTR1_TINY;
            shadowOAM[oamIndex].attr2 = ATTR2_TILEID(20, 8);
        } else {
            shadowOAM[oamIndex].attr0 = ATTR0_HIDE;
        }
    }
}

void drawHand() {
    int oamIndex;
    for (int i = 0; i < 4; i++) {
        oamIndex = deckOAM[i];
        if (player.deck[currentDeck[i]].used == 0) {
            //draw player hand
            shadowOAM[oamIndex].attr0 = (currentCardsRow & ROWMASK) | ATTR0_REGULAR | ATTR0_SQUARE | ATTR0_4BPP; //i+1
            shadowOAM[oamIndex].attr1 = (currentCardsCols[i] & COLMASK) | ATTR1_LARGE;
            shadowOAM[oamIndex].attr2 = ATTR2_TILEID(masterDeck[player.deck[currentDeck[i]].index][SHEET_ROW], masterDeck[player.deck[currentDeck[i]].index][SHEET_COL]);
        } else {
            shadowOAM[oamIndex].attr0 = ATTR0_HIDE;
        }
    }

    for (int i = 0; i < 5; i++) {
        oamIndex = actionPointsOAM[i];
        //hide action points
        shadowOAM[oamIndex].attr0 = ATTR0_HIDE; //5+i
    }

    for (int i = 0; i < player.actionPoints; i++) {
        oamIndex = actionPointsOAM[i];
        //draw action points
        shadowOAM[oamIndex].attr0 = (87 & ROWMASK) | ATTR0_REGULAR | ATTR0_TALL | ATTR0_4BPP;
        shadowOAM[oamIndex].attr1 = ((110 + (i*7)) & COLMASK) | ATTR1_TINY;
        shadowOAM[oamIndex].attr2 = ATTR2_TILEID(20, 4);
    }
}

void drawBattleAfterPause() {
    drawHand();
    drawEnemyStatus();
    drawBlockMeter();
    drawPlayerStatus();
}

void checkSelector() {
    int currentDeckIndex = -1;
    for (int i = 0; i < 4; i++) {
        if (collision(player.selector.screenRow, player.selector.screenCol, player.selector.height, player.selector.width,
            currentCardsRow + 4, currentCardsCols[i] + 12, CARD_HEIGHT, CARD_WIDTH)) {
            currentDeckIndex = i;
        }
    }
    //play selected card
    if (currentDeckIndex != -1 && masterDeck[player.deck[currentDeck[currentDeckIndex]].index][AP_COST] <= player.actionPoints && player.deck[currentDeck[currentDeckIndex]].used == 0) {
        //animateCard(currentDeckIndex, player.deck[currentDeck[currentDeckIndex]]);
        player.deck[currentDeck[currentDeckIndex]].used = 1;
        player.actionPoints -= masterDeck[player.deck[currentDeck[currentDeckIndex]].index][AP_COST];

        int damage = masterDeck[player.deck[currentDeck[currentDeckIndex]].index][DMG];
        if (enemy.block - damage < 0) {
            enemy.block = 0;
            enemy.health += (enemy.block - damage);
        } else {
            enemy.block -= damage;
        }

        player.block += masterDeck[player.deck[currentDeck[currentDeckIndex]].index][BLOCK];
        if (masterDeck[player.deck[currentDeck[currentDeckIndex]].index][REDO_ON]) {
            newHand();
            cardsRemaining++;
        } else if (masterDeck[player.deck[currentDeck[currentDeckIndex]].index][ENERGY_ON]) {
            player.actionPoints += 2;
            if (player.actionPoints > 5) {
                player.actionPoints = 5;
            }
        }
        cardsRemaining--;
        drawBlockMeter();
        drawHand();
        drawEnemyStatus();
    }
}


void initGame() {
    cheatOn = 0;
    bossBattle = 0;
    Box newSelector = {.width = 16, .height = 16, .sheetRow = 16, .sheetCol = 0, .screenRow = 65, .screenCol = 105, .dRow = 3, .dCol = 3};
    Player newPlayer = {.health = 70, .coins = rand() % 40, .actionPoints = 3, .deckLength = 6, .selector = newSelector, .selectorEnabled = 0, .shipCol = -11, .shipRow = -20};
    player = newPlayer;
    int initialCards[6] = {FIRE1, BLOCK1, FIRE2, BLOCK2, REDO, ENERGY};
    for (int i = 0; i < 6; i++) {
        player.deck[i].index = initialCards[i];
    }
}