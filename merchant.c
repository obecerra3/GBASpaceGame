#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "merchant.h"
#include "eventScreen.h"
#include "spriteSheet.h"
#include "battle.h"

int cardsForSale[3];
int deckOAM[3];

#define CARDS_ROW 70
int cardsCol[3] = {25, 87, 150};

enum {SHEET_COL, SHEET_ROW};


void initMerchant() {
    player.selector.oamIndex = getOAMIndex();
    for (int i = 0; i < 3; i++) {
        cardsForSale[i] = rand() % 10;
        deckOAM[i] = getOAMIndex();
    }
    drawMerchantCards();
}

void updateMerchant() {
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
}

void drawMerchantCards() {
    int oamIndex;
    for (int i = 0; i < 3; i++) {
        oamIndex = deckOAM[i];
        shadowOAM[oamIndex].attr0 = (CARDS_ROW & ROWMASK) | ATTR0_REGULAR | ATTR0_SQUARE | ATTR0_4BPP;
        shadowOAM[oamIndex].attr1 = (cardsCol[i] & COLMASK) | ATTR1_LARGE;
        shadowOAM[oamIndex].attr2 = ATTR2_TILEID(masterDeck[cardsForSale[i]][SHEET_ROW], masterDeck[cardsForSale[i]][SHEET_COL]);
        /*if (1==1) {
            shadowOAM[oamIndex].attr0 = (CARDS_ROW & ROWMASK) | ATTR0_REGULAR | ATTR0_SQUARE | ATTR0_4BPP;
            shadowOAM[oamIndex].attr1 = (cardsCol[i] & COLMASK) | ATTR1_LARGE;
            //shadowOAM[oamIndex].attr2 = ATTR2_TILEID(masterDeck[cardsForSale[i]]][SHEET_ROW], masterDeck[cardsForSale[i]][SHEET_COL]);
        } else {
            shadowOAM[oamIndex].attr0 = ATTR0_HIDE;
        }*/
    }
}

void drawMerchant() {
    //draw selector
    shadowOAM[player.selector.oamIndex].attr0 = (player.selector.screenRow & ROWMASK) | ATTR0_REGULAR | ATTR0_SQUARE | ATTR0_4BPP;
    shadowOAM[player.selector.oamIndex].attr1 = (player.selector.screenCol & COLMASK) | ATTR1_SMALL;
    shadowOAM[player.selector.oamIndex].attr2 = ATTR2_TILEID(player.selector.sheetRow, player.selector.sheetCol);
}

void checkMerchantSelector() {}