#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"

#include "titleScreen.h"
#include "pauseScreen.h"
#include "gameScreen.h"
#include "loseScreen.h"
#include "winScreen.h"
#include "spriteSheet.h"

//Prototypes
void initGame();
void updateGame();
void draw();
void shiftInvadersDown();

//global variables
int gameOver;
int frame;
int invadersRemaining;
int livesRemaining;

ANISPRITE player;
ANISPRITE bullet;
ANISPRITE invaderBullet;
ANISPRITE invaders[20];
ANISPRITE hearts[3];

// Text Buffer
char buffer[200];

void initGame() {
    buttons = BUTTONS;
    oldButtons = BUTTONS;

    //create player
    ANISPRITE newPlayer = {.screenRow = 130, .screenCol = 110, .width = 14, .height = 9, .rowOffset = 2, .colOffset = 1, .dCol = 2};
    player = newPlayer;

    //create bullet
    ANISPRITE newBullet = {.width = 4, .height = 8, .dRow = -3, .colOffset = 7, .rowOffset = 6};
    bullet = newBullet;

    //create enemyBullet
    ANISPRITE newBullet2 = {.width = 4, .height = 8, .dRow = 3, .colOffset = 7, .rowOffset = 6, .sheetRow = 6, .sheetCol = 0, .hide = 1};
    invaderBullet = newBullet2;

    ANISPRITE newInvader = {.dCol = 1, .aniCounter = 0, .curFrame = 0, .numFrames = 3, .sheetRow = 0, .sheetCol = 4, .width = 12, .height = 12, .rowOffset = 4, .colOffset = 2};
    int count = 0;
    //instantiate invaders
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 4; j++) {
        	newInvader.sheetCol = 6 - (i%3)*2;
            newInvader.screenRow = 10 + (newInvader.height + 5) * i;
            newInvader.screenCol = 70 + (newInvader.width + 6) * j;
            invaders[count] = newInvader;
            count++;
        }
    }

    //instantiate lives
    ANISPRITE newHeart = {.width = 14, .screenRow = 145, .sheetRow = 2, .sheetCol = 0};
    for (int i = 0; i < 3; i++) {
    	newHeart.shadowOAMIndex = i + 2;
    	newHeart.screenCol = 49 + (newHeart.width + 3) * i;
    	hearts[i] = newHeart;
	    shadowOAM[i + 2].attr0 = hearts[i].screenRow | ATTR0_REGULAR | ATTR0_SQUARE | ATTR0_4BPP;
	    shadowOAM[i + 2].attr1 = hearts[i].screenCol | ATTR1_SMALL;
	    shadowOAM[i + 2].attr2 = ATTR2_TILEID(hearts[i].sheetRow, hearts[i].sheetCol);
    }

    //reset global variables
    invadersRemaining = 20;
    livesRemaining = 3;
    gameOver = 0;
    frame = 0;
}

void updateGame() {
    //player movement
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        if (player.screenCol < 225) {
            player.screenCol += player.dCol;
        }
    } else if (BUTTON_HELD(BUTTON_LEFT)) {
        if (player.screenCol >= 2) {
            player.screenCol -= player.dCol;
        }
    }

    if (BUTTON_PRESSED(BUTTON_A)) {
        bullet.screenRow = player.screenRow;
        bullet.screenCol = player.screenCol;
        bullet.hide = 0;
    }

    if (bullet.hide == 0) {
        bullet.screenRow += bullet.dRow;
        //check for collisions with invaders
        for (int i = 0; i < 20; i++) {
            if (invaders[i].hide == 0 && spriteCollision(bullet, invaders[i])) {
                bullet.hide = 1;
                invaders[i].hide = 1;
                invadersRemaining--;
                shadowOAM[i + 20].attr0 = ATTR0_HIDE;
            }
        }
    }

    //check for when to shift invaders block downwards
    int shift = 0;
    for (int i = 0; i < 20; i++) {
    	if (invaders[i].hide == 0) {
    		if (spriteCollision(invaders[i], player)) {
    			gameOver = 1;
    		}
            if ((invaders[i].screenCol > 225 | invaders[i].screenCol < 0) && shift == 0) {
            	shift = 1;
            	shiftInvadersDown();
            }
        }
    }

    //update col of invaders
    for (int i = 0; i < 20; i++) {
    	if (invaders[i].hide == 0) {
            invaders[i].screenCol += invaders[i].dCol;
            if (frame % 50 == 0) {
            	invaders[i].sheetRow = (invaders[i].sheetRow + 2) % 6;
            }
        }
    }

    if (invaderBullet.hide == 0) {
    	invaderBullet.screenRow += invaderBullet.dRow;
    	if (spriteCollision(invaderBullet, player)) {
    		invaderBullet.hide = 1;
    		shadowOAM[hearts[livesRemaining - 1].shadowOAMIndex].attr0 = ATTR0_HIDE;
    		hearts[livesRemaining - 1].hide = 1;
    		livesRemaining--;
    	}
    } else if (frame % 20 == 0) {
    	int randIndex = (player.screenRow * livesRemaining + invadersRemaining) % 20;
    	while (invaders[randIndex].hide == 1) {
    		randIndex = (randIndex + 1) % 20;
    	}
    	invaderBullet.hide = 0;
    	invaderBullet.screenRow = invaders[randIndex].screenRow;
    	invaderBullet.screenCol = invaders[randIndex].screenCol;
    }


    if (bullet.screenRow + 4 <= 0) {
        bullet.hide = 1;
    }

    if (invaderBullet.screenRow >= 160) {
        invaderBullet.hide = 1;
    }

    if (livesRemaining <= 0) {
    	gameOver = 1;
    }

    frame++;
}

void shiftInvadersDown() {
	for (int i = 0; i < 20; i++) {
		invaders[i].screenRow += 10;
		invaders[i].dCol *= -1;
	}
}

void draw() {
    //update invader positions
    for (int i = 0; i < 20; i++) {
    	if (i < 3 && hearts[i].hide == 0) {
    		shadowOAM[i + 2].attr0 = hearts[i].screenRow | ATTR0_REGULAR | ATTR0_SQUARE | ATTR0_4BPP;
	   		shadowOAM[i + 2].attr1 = hearts[i].screenCol | ATTR1_SMALL;
	    	shadowOAM[i + 2].attr2 = ATTR2_TILEID(hearts[i].sheetRow, hearts[i].sheetCol);
    	}

    	ANISPRITE invader = invaders[i];
    	if (invader.hide == 0) {
    		shadowOAM[i + 20].attr0 = invader.screenRow | ATTR0_REGULAR | ATTR0_SQUARE | ATTR0_4BPP;
    		shadowOAM[i + 20].attr1 = invader.screenCol | ATTR1_SMALL;
    		shadowOAM[i + 20].attr2 = ATTR2_TILEID(invader.sheetRow, invader.sheetCol);
		}
    }


    //update player position
    shadowOAM[0].attr0 = player.screenRow | ATTR0_REGULAR | ATTR0_SQUARE | ATTR0_4BPP;
    shadowOAM[0].attr1 = player.screenCol | ATTR1_SMALL;
    shadowOAM[0].attr2 = ATTR2_TILEID(0, 0);

    //update bullet
    if (bullet.hide == 0) {
        shadowOAM[1].attr0 = bullet.screenRow | ATTR0_REGULAR | ATTR0_SQUARE | ATTR0_4BPP;
        shadowOAM[1].attr1 = bullet.screenCol | ATTR1_SMALL;
        shadowOAM[1].attr2 = ATTR2_TILEID(4, 0);
    } else {
        shadowOAM[1].attr0 = ATTR0_HIDE;
    }

    //update enemy bullet
    if (invaderBullet.hide == 0) {
        shadowOAM[5].attr0 = invaderBullet.screenRow | ATTR0_REGULAR | ATTR0_SQUARE | ATTR0_4BPP;
        shadowOAM[5].attr1 = invaderBullet.screenCol | ATTR1_SMALL;
        shadowOAM[5].attr2 = ATTR2_TILEID(invaderBullet.sheetRow, invaderBullet.sheetCol);
    } else {
        shadowOAM[5].attr0 = ATTR0_HIDE;
    }
}