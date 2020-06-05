#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "battle.h"
#include "map.h"
#include "mapScreen.h"
#include <math.h>

int stateToGo;

#define MAP_LEN 36
static MapNode map[MAP_LEN];

int mapRow;
int mapCol;

MapNode bossNode;

int frame;

int hOff = 0;
int vOff = 0;

void initMap() {
    /*
    create static mapNode pool
    */
    player.shipCol = -11;
    player.shipRow = -20;
    frame = 0;
    mapRow = -40;
    mapCol = -40;
    stateToGo = 0;
    int count = 0;
    MapNode mapNode;
    int MAP_ROW = 0;
    int MAP_COL = 0;
    int rowOffset;
    int colOffset;
    for (int i = 0; i < 6; i++) {
        for (int j = 0;j < 6; j++) {
            rowOffset = rand() % 40;
            colOffset = rand() % 40;
            mapNode.worldRow = MAP_ROW + (i*90) + rowOffset; //64 magic number for 4 * mapNodeSize
            mapNode.worldCol = MAP_COL + (j*90) + colOffset;
            if (rand() % 4 < 2) {
                mapNode.type = rand() % 2;
            } else {
                mapNode.type = (rand() % 2) + 2;
            }
            mapNode.sheetRow = 16;
            mapNode.sheetCol = 2+(2*mapNode.type);
            mapNode.visited = 0;
            mapNode.inRange = 0;
            map[count] = mapNode;
            count++;
        }
    }
    MapNode newNode = {.worldRow = 400, .worldCol = 430, .type = 3, .sheetRow = 20, .sheetCol = 2}; //.oamIndex = 28
    bossNode = newNode;
    checkMap();
}

void initMapOAM() {
    player.selector.oamIndex = getOAMIndex();
    player.shipOAMIndex = getOAMIndex();
    for (int i = 0; i < MAP_LEN; i++) {
        map[i].oamIndex = getOAMIndex();
    }
    bossNode.oamIndex = getOAMIndex();
}

void checkMap() {
    MapNode node;
    for (int i = 0; i < MAP_LEN; i++) {
        node = map[i];
        if (distanceBetween(player.shipRow, player.shipCol, node.worldRow, node.worldCol) <= 150 && !node.visited) {
            node.sheetRow = 18;
            node.inRange = 1;
        } else if (!node.visited) {
            node.sheetRow = 16;
            node.inRange = 0;
        }
        map[i] = node;
    }
}


void updateMap() {
    /*
    */
    //selector movement
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        if (player.selector.screenCol < 238 - player.selector.width) {
            player.selector.screenCol += player.selector.dCol;
        }
        if (player.selector.screenCol > 210 && mapCol < SCREENWIDTH+40) { //130
            mapCol+=3;
            hOff++;
        }
    }
    if (BUTTON_HELD(BUTTON_LEFT)) {
        if (player.selector.screenCol > 4) {
            player.selector.screenCol -= player.selector.dCol;
        }
        if (player.selector.screenCol < 30 && mapCol > -30) {
            mapCol-=3;
            hOff--;
        }
    }
    if (BUTTON_HELD(BUTTON_UP)) {
        if (player.selector.screenRow > 2) {
            player.selector.screenRow -= player.selector.dRow;
        }
        if (player.selector.screenRow < 30 && mapRow > -40) {
            mapRow-=3;
            vOff--;
        }
    }
    if (BUTTON_HELD(BUTTON_DOWN)) {
        if (player.selector.screenRow < 158 - player.selector.height) {
            player.selector.screenRow += player.selector.dRow;
        }
        if (player.selector.screenRow > 130 && mapRow < SCREENHEIGHT+130) { //20
            mapRow+=3;
            vOff++;
        }
    }

    if (BUTTON_PRESSED(BUTTON_A)) {
        checkMapSelector();
    }

    frame++;
    if (frame > 81) {
        frame = 0;
    }

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;
}

void checkMapSelector() {
    MapNode node;
    for (int i = 0; i < MAP_LEN; i++) {
        node = map[i];
        if (node.inRange && !node.visited && collision(player.selector.screenRow,
            player.selector.screenCol, 16, 16, (node.worldRow - mapRow) & ROWMASK,
            (node.worldCol - mapCol) & COLMASK, 16, 16)) {
            node.visited = 1;
            player.shipRow = node.worldRow;
            player.shipCol = node.worldCol;
            checkMap();
            if (node.type == 3) {
                heal();
            } else {
                stateToGo = node.type + 3;
            }
            map[i] = node;
        }
    }

    if (collision(player.selector.screenRow, player.selector.screenCol, 16, 16,
        (bossNode.worldRow - mapRow) & ROWMASK, (bossNode.worldCol - mapCol) & COLMASK, 16, 16)
        && distanceBetween(player.shipRow, player.shipCol, bossNode.worldRow, bossNode.worldCol) <= 150) {
            player.shipRow = bossNode.worldRow;
            player.shipCol = bossNode.worldCol;
            bossBattle = 1;
            stateToGo = 3;
    }
}

void heal() {
    if (player.health <= 60) {
        player.health += 20;
    } else {
        player.health = 80;
    }
}

void drawMap() {
    //draw selector
    shadowOAM[player.selector.oamIndex].attr0 = (player.selector.screenRow & ROWMASK) | ATTR0_REGULAR | ATTR0_SQUARE | ATTR0_4BPP;
    shadowOAM[player.selector.oamIndex].attr1 = (player.selector.screenCol & COLMASK) | ATTR1_SMALL;
    shadowOAM[player.selector.oamIndex].attr2 = ATTR2_TILEID(player.selector.sheetRow, player.selector.sheetCol);

    //draw player ship
    if (collision(player.shipRow, player.shipCol, 16, 16, mapRow - 15, mapCol - 15, SCREENHEIGHT + 15, SCREENWIDTH + 15)) {
        shadowOAM[player.shipOAMIndex].attr0 = ((player.shipRow - mapRow) & ROWMASK) | ATTR0_REGULAR | ATTR0_SQUARE | ATTR0_4BPP;
        shadowOAM[player.shipOAMIndex].attr1 = ((player.shipCol - mapCol) & COLMASK) | ATTR1_SMALL;
        shadowOAM[player.shipOAMIndex].attr2 = ATTR2_TILEID(getShipFrame(), 0);
    } else {
        shadowOAM[player.shipOAMIndex].attr0 = ATTR0_HIDE;
    }

    //draw bossBattleNode
    if (collision(bossNode.worldRow, bossNode.worldCol, 16, 16, mapRow - 15, mapCol - 15, SCREENHEIGHT + 15, SCREENWIDTH + 15)) {
        shadowOAM[bossNode.oamIndex].attr0 = ((bossNode.worldRow - mapRow) & ROWMASK) | ATTR0_REGULAR | ATTR0_SQUARE | ATTR0_4BPP;
        shadowOAM[bossNode.oamIndex].attr1 = ((bossNode.worldCol - mapCol) & COLMASK) | ATTR1_SMALL;
        shadowOAM[bossNode.oamIndex].attr2 = ATTR2_TILEID(bossNode.sheetRow, bossNode.sheetCol);
    } else {
        shadowOAM[bossNode.oamIndex].attr0 = ATTR0_HIDE;
    }

    MapNode node;
    for (int i = 0; i < MAP_LEN; i++) {
        node = map[i];
        //int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB);
        if (!node.visited && collision (node.worldRow, node.worldCol, 16, 16, mapRow - 15, mapCol - 15, SCREENHEIGHT + 15, SCREENWIDTH + 15)) {
            int drawRow = (node.worldRow - mapRow);
            int drawCol = (node.worldCol - mapCol);
            shadowOAM[node.oamIndex].attr0 = (drawRow & ROWMASK) | ATTR0_REGULAR | ATTR0_SQUARE | ATTR0_4BPP;
            shadowOAM[node.oamIndex].attr1 = (drawCol & COLMASK) | ATTR1_SMALL;
            shadowOAM[node.oamIndex].attr2 = ATTR2_TILEID(node.sheetRow, node.sheetCol);
        } else {
            shadowOAM[node.oamIndex].attr0 = ATTR0_HIDE;
        }
    }
}

int distanceBetween(int row1, int col1, int row2, int col2) {
    return sqrt(pow(row1 - row2, 2) + pow (col1 - col2, 2));
}

int getShipFrame() {
    if (frame < 27) {
        return 18;
    } else if (frame < 54) {
        return 20;
    }
    return 22;
}


/*

switch(mapNod.type){
    case ENEMY:
        break;
    case MERCHANT:
        break;
    case UNKNOWN:
        break;
    case REST:
        break;
}

*/