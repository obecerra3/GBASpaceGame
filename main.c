/*
Updated for M04

Instructions:
Press start to get past the title screen and the Button A to go past the instructions.
In the map use the selector to hover over a map state and travel there. E stands for enemies and
B is the final boss, any other state will give your player health. You can only travel to states outlined
in green (except for the boss which can be challenged at any time). In combat use the selector by hovering
over the card you wish to play and clicking Button A. Each card has an action point (AP) cost in the
top corner, each player turn you start with 3 AP. At the end of your turn the enemy will
gain defense and attack the player. Deplete the enemies health (right health bar) before
yours runs out to win.

Selector
 +Represented by white circle that moves around the screen and selects cards, move
 with arrow keys and select cards with A.

Map
+Displaying random set of mapnodes created everytime you restart/ start the game
+Enemy node and boss node travel to battles
+All other nodes give player health

-Bug with boss node displaying twice

Card-Based Combat
 +turn system works
 +AP system works
 +Block system works (for both player and enemy)
 +Health system works (for both player and enemy)
 +Redo and AP cards work as intended
 +Heavier attack/ block cards work as intended
 +Displaying, drawing new random cards, selector and card collision all work as expected
 +Can reach win/lose state in combat

 -Bug with having not enough AP and your turn not ending if you have a particular set of cards
 -Need to add more enemy habits and a boss variant enemy with higher health
 -Need to add logic for buff/ debuff cards

Sounds
+Working pause/ state transition sound effect and title screen music.

Sprites
+Animated Map ship sprite

-need to add ship sprites to the battle screen

Instructions
-need to add instructions
*/


#include "myLib.h"
#include "map.h"
#include "battle.h"
#include "unknownEvent.h"
#include "merchant.h"
#include "restSpot.h"
#include "sound.h"

#include "titleScreen.h"
#include "instructionScreen.h"
#include "battleScreen.h"
#include "eventScreen.h"
#include "mapScreen.h"
#include "pauseScreen.h"
#include "loseScreen.h"
#include "winScreen.h"
#include "cards.h"
#include "punch.h"
#include "humanMusic.h"


// Prototypes
void initialize();

// State Prototypes
void goToStart();
void start();
void goToInstructions();
void instructions();
void goToMap();
void map();
void goToBattle();
void battle();
void goToMerchant();
void merchant();
void goToUnknownEvent();
void unknownEvent();
void goToRestSpot();
void restSpot();

void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

//sounds
SOUND soundA;
SOUND soundB;

// States
enum {START, INSTRUCTIONS, MAP, BATTLE, MERCHANT, UNKNOWN_EVENT, REST_SPOT, PAUSE, WIN, LOSE};
int state;
int stateBeforePause;

unsigned short buttons;
unsigned short oldButtons;

OBJ_ATTR shadowOAM[128];
int oamIndexMask[128];

int main() {
    initialize();
    initGame();

    setupSounds();
    setupInterrupts();

    playSoundA(humanMusic, HUMANMUSICLEN, HUMANMUSICFREQ, 1);
	while(1) {
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine
        switch(state) {
            case START:
                start();
                break;
            case INSTRUCTIONS:
                instructions();
                break;
            case MAP:
                map();
                break;
            case BATTLE:
                battle();
                break;
            case MERCHANT:
                merchant();
                break;
            case UNKNOWN_EVENT:
                unknownEvent();
                break;
            case REST_SPOT:
                restSpot();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
        }
        waitForVBlank();
        DMANow(3, shadowOAM, OAM, 128 * 4);
	}
}


void initialize() {
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE ;
    REG_BG0CNT = BG_SIZE_LARGE | BG_4BPP | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    DMANow(3, cardsPal, SPRITEPALETTE, cardsPalLen / 2);
    DMANow(3, cardsTiles, &CHARBLOCK[4], cardsTilesLen / 2);
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    srand(time(0));

    goToStart();
}

// Sets up the start state
void goToStart() {
    hideSprites();
    clearAllOAM();
    DMANow(3, titleScreenPal, PALETTE, titleScreenPalLen / 2);
    DMANow(3, titleScreenTiles, CHARBLOCK, titleScreenTilesLen / 2);
    DMANow(3, titleScreenMap, &SCREENBLOCK[31], titleScreenMapLen / 2);
    state = START;
}

// Runs every frame of the start state
void start() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        stopSound();
        goToInstructions();
    }
}

void goToInstructions() {
    clearAllOAM();
    playSoundA(punch, PUNCHLEN, PUNCHFREQ, 0);
    DMANow(3, instructionScreenPal, PALETTE, instructionScreenPalLen / 2);
    DMANow(3, instructionScreenTiles, CHARBLOCK, instructionScreenTilesLen / 2);
    DMANow(3, instructionScreenMap, &SCREENBLOCK[31], instructionScreenMapLen / 2);
    state = INSTRUCTIONS;
}

void instructions() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START) || BUTTON_PRESSED(BUTTON_A)) {
        initMap();
        goToMap();
    } else if (BUTTON_PRESSED(BUTTON_B) || BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}

void goToMap() {
    clearAllOAM();
    initMapOAM();
    playSoundA(punch, PUNCHLEN, PUNCHFREQ, 0);
    DMANow(3, mapScreenPal, PALETTE, mapScreenPalLen / 2);
    DMANow(3, mapScreenTiles, CHARBLOCK, mapScreenTilesLen / 2);
    DMANow(3, mapScreenMap, &SCREENBLOCK[31], mapScreenMapLen / 2);
    state = MAP;
}

void map() {
    updateMap();
    waitForVBlank();
    drawMap();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        stateBeforePause = MAP;
        goToPause();
    }
    switch(stateToGo) {
        case BATTLE:
            stateToGo = 0;
            goToBattle();
            break;
        case UNKNOWN_EVENT:
            stateToGo = 0;
            goToUnknownEvent();
            break;
        case REST_SPOT:
            stateToGo = 0;
            goToRestSpot();
            break;
        case MERCHANT:
            stateToGo = 0;
            goToMerchant();
            break;
    }
}

void goToBattle() {
    clearAllOAM();
    initBattle();
    DMANow(3, battleScreenPal, PALETTE, battleScreenPalLen / 2);
    DMANow(3, battleScreenTiles, CHARBLOCK, battleScreenTilesLen / 2);
    DMANow(3, battleScreenMap, &SCREENBLOCK[31], battleScreenMapLen / 2);
    state = BATTLE;
}

void battle() {
    updateBattle();
    waitForVBlank();
    drawBattle();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        stateBeforePause = BATTLE;
        goToPause();
    } else if (gameOver) {
        goToLose();
    } else if (gameWon && bossBattle) {
        bossBattle = 0;
        goToWin();
    } else if (gameWon) {
        hideSprites();
        goToMap();
    }
}

void goToMerchant() {
    clearAllOAM();
    DMANow(3, eventScreenPal, PALETTE, eventScreenPalLen / 2);
    DMANow(3, eventScreenTiles, CHARBLOCK, eventScreenTilesLen / 2);
    DMANow(3, eventScreenMap, &SCREENBLOCK[31], eventScreenMapLen / 2);
    state = MERCHANT;
}

void merchant() {
    updateMerchant();
    waitForVBlank();
    drawMerchant();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        stateBeforePause = MERCHANT;
        goToPause();
    }
    //logic for done shopping
}

void goToUnknownEvent() {
    clearAllOAM();
    DMANow(3, eventScreenPal, PALETTE, eventScreenPalLen / 2);
    DMANow(3, eventScreenTiles, CHARBLOCK, eventScreenTilesLen / 2);
    DMANow(3, eventScreenMap, &SCREENBLOCK[31], eventScreenMapLen / 2);
    state = UNKNOWN_EVENT;
}

void unknownEvent() {
    updateUnknownEvent();
    waitForVBlank();
    drawUnknownEvent();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        stateBeforePause = UNKNOWN_EVENT;
        goToPause();
    }
    //logic for event over
}

void goToRestSpot() {
    clearAllOAM();
    DMANow(3, eventScreenPal, PALETTE, eventScreenPalLen / 2);
    DMANow(3, eventScreenTiles, CHARBLOCK, eventScreenTilesLen / 2);
    DMANow(3, eventScreenMap, &SCREENBLOCK[31], eventScreenMapLen / 2);
    state = REST_SPOT;
}

void restSpot() {
    updateRestSpot();
    waitForVBlank();
    drawRestSpot();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        stateBeforePause = REST_SPOT;
        goToPause();
    }
    //logic for rest done
}


// Sets up the pause state
void goToPause() {
    playSoundA(punch, PUNCHLEN, PUNCHFREQ, 0);
    hideSprites();
    DMANow(3, pauseScreenPal, PALETTE, pauseScreenPalLen / 2);
    DMANow(3, pauseScreenTiles, CHARBLOCK, pauseScreenTilesLen / 2);
    DMANow(3, pauseScreenMap, &SCREENBLOCK[31], pauseScreenMapLen / 2);
    state = PAUSE;
}

// Runs every frame of the pause state
void pause() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START))
        switch(stateBeforePause) {
            case MAP:
                goToMap();
                break;
            case BATTLE:
                goToBattle();
                drawBattleAfterPause();
                break;
            case UNKNOWN_EVENT:
                goToUnknownEvent();
                break;
            case REST_SPOT:
                goToRestSpot();
                break;
            case MERCHANT:
                goToMerchant();
                break;
        }
    else if (BUTTON_PRESSED(BUTTON_SELECT))
        goToStart();
}

// Sets up the win state
void goToWin() {
    clearAllOAM();
    hideSprites();
    DMANow(3, winScreenPal, PALETTE, winScreenPalLen / 2);
    DMANow(3, winScreenTiles, CHARBLOCK, winScreenTilesLen / 2);
    DMANow(3, winScreenMap, &SCREENBLOCK[31], winScreenMapLen / 2);
    state = WIN;
}

// Runs every frame of the win state
void win() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}

// Sets up the lose state
void goToLose() {
    clearAllOAM();
    hideSprites();
    DMANow(3, loseScreenPal, PALETTE, loseScreenPalLen / 2);
    DMANow(3, loseScreenTiles, CHARBLOCK, loseScreenTilesLen / 2);
    DMANow(3, loseScreenMap, &SCREENBLOCK[31], loseScreenMapLen / 2);
    state = LOSE;
}

// Runs every frame of the lose kll;l0i,i,komij
void lose() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}
