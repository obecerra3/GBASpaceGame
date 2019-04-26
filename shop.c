#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "shop.h"
#include "eventScreen.h"
#include "spriteSheet.h"
#include "battle.h"

static int cardsForSale[3];
int deckOAM[3];
static int cardsBought[3];
int leaveShop;

#define CARDS_ROW 70
#define CARD_WIDTH 39
#define CARD_HEIGHT 51
int cardsCol[3] = {25, 87, 150};

enum {SHEET_COL, SHEET_ROW};

Box exitButton;


void initShop(int newStock) {
    leaveShop = 0;
    player.selector.oamIndex = getOAMIndex();
    for (int i = 0; i < 3; i++) {
        if (newStock == 1) {
            int index = rand() % 10;
            if (index >= 4 && index <= 7) {
                index = rand() % 4;
            }
            cardsForSale[i] = index;
            cardsBought[i] = 0;
        }
        deckOAM[i] = getOAMIndex();
    }
    Box newBox = {.width = 16, .height = 16, .sheetRow = 22, .sheetCol = 6, .screenRow = 140, .screenCol = 215, .oamIndex = getOAMIndex()};
    exitButton = newBox;
    drawShopCards();
}

void updateShop() {
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

    if (BUTTON_PRESSED(BUTTON_A)) {
        checkShopSelector();
    }
}

void drawShopCards() {
    hideSprites();
    int oamIndex;
    printNum(5, 218, player.coins, 0);
    for (int i = 0; i < 3; i++) {
        oamIndex = deckOAM[i];
        if (cardsBought[i] == 0) {
            shadowOAM[oamIndex].attr0 = (CARDS_ROW & ROWMASK) | ATTR0_REGULAR | ATTR0_SQUARE | ATTR0_4BPP;
            shadowOAM[oamIndex].attr1 = (cardsCol[i] & COLMASK) | ATTR1_LARGE;
            shadowOAM[oamIndex].attr2 = ATTR2_TILEID(masterDeck[cardsForSale[i]][SHEET_ROW], masterDeck[cardsForSale[i]][SHEET_COL]);
            printNum(CARDS_ROW - 9, cardsCol[i] + 23, masterDeck[cardsForSale[i]][11], 0);
        } else {
            shadowOAM[oamIndex].attr0 = ATTR0_HIDE;
            printNum(CARDS_ROW - 9, cardsCol[i] + 23, masterDeck[cardsForSale[i]][11], 1);
        }
    }
}

void drawShop() {
    //draw selector
    shadowOAM[player.selector.oamIndex].attr0 = (player.selector.screenRow & ROWMASK) | ATTR0_REGULAR | ATTR0_SQUARE | ATTR0_4BPP;
    shadowOAM[player.selector.oamIndex].attr1 = (player.selector.screenCol & COLMASK) | ATTR1_SMALL;
    shadowOAM[player.selector.oamIndex].attr2 = ATTR2_TILEID(player.selector.sheetRow, player.selector.sheetCol);

    //drawExit
    shadowOAM[exitButton.oamIndex].attr0 = (exitButton.screenRow & ROWMASK) | ATTR0_REGULAR | ATTR0_SQUARE | ATTR0_4BPP;
    shadowOAM[exitButton.oamIndex].attr1 = (exitButton.screenCol & COLMASK) | ATTR1_SMALL;
    shadowOAM[exitButton.oamIndex].attr2 = ATTR2_TILEID(exitButton.sheetRow, exitButton.sheetCol);
}

void checkShopSelector() {
    for (int i = 0; i < 3; i++) {
        if (collision(player.selector.screenRow, player.selector.screenCol, player.selector.height, player.selector.width,
                CARDS_ROW + 4, cardsCol[i] + 12, CARD_HEIGHT, CARD_WIDTH)) {
            if (masterDeck[cardsForSale[i]][11] <= player.coins && player.deckLength < 40) {
                player.coins -= masterDeck[cardsForSale[i]][11];
                cardsBought[i] = 1;
                drawShopCards();
                Card newCard = {.used = 0, .index = cardsForSale[i]};
                player.deck[player.deckLength] = newCard;
                player.deckLength++;
            }
        }
    }

    if (collision(player.selector.screenRow, player.selector.screenCol, player.selector.height, player.selector.width,
                exitButton.screenRow, exitButton.screenCol, 15, 15)) {
        leaveShop = 1;
    }

}




