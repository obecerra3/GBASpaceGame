# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 52 "main.c"
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;






typedef struct {
    int used;
    int index;
} Card;

typedef struct {
    int worldRow;
    int worldCol;
    int sheetRow;
    int sheetCol;
    int visited;
    int inRange;
    int type;
    int oamIndex;
} MapNode;

typedef struct {
    int width;
    int height;
    int screenRow;
    int screenCol;
    int dRow;
    int dCol;
    int sheetRow;
    int sheetCol;
    int oamIndex;
} Box;

typedef struct {
    int health;
    int block;
    int actionPoints;
    int deckLength;
    int selectorEnabled;
    int shipCol;
    int shipRow;
    int shipOAMIndex;
    Box selector;
    Card deck[20];
} Player;

typedef struct {
    int health;
    int block;
} Enemy;

typedef struct {
    int screenRow;
    int screenCol;
    int rowOffset;
    int colOffset;
    int sheetRow;
    int sheetCol;
    int dRow;
    int dCol;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
    int oamIndex;
} ANISPRITE;
# 132 "myLib.h"
extern unsigned short *videoBuffer;
# 153 "myLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int row, int col, unsigned short color);
void drawRect3(int row, int col, int height, int width, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int row, int col, int height, int width, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int row, int col, unsigned char colorIndex);
void drawRect4(int row, int col, int height, int width, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int row, int col, int height, int width, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    signed short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
extern int oamIndexMask[];
# 226 "myLib.h"
void hideSprites();
# 250 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 261 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 301 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 385 "myLib.h"
typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;




int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB);

int spriteCollision(ANISPRITE sprite1, ANISPRITE sprite2);

void clearAllOAM();

void freeOAMIndex(int i);

int getOAMIndex();

void printNum(int row, int col, int num);
# 53 "main.c" 2
# 1 "map.h" 1

void initMap();
void updateMap();
void drawMap();
void checkMap();
int distanceBetween(int row1, int col1, int row2, int col2);
int getShipFrame();
void checkMapSelector();
void initMapOAM();


extern int stateToGo;
# 54 "main.c" 2
# 1 "battle.h" 1

void initBattle();
void updateBattle();
void drawBattle();
void initGame();
void checkSelector();
void newHand();
void drawHand();
void drawBattleAfterPause();
void drawPlayerStatus();
void drawEnemyStatus();
void drawBlockMeter();


extern Player player;

extern int gameOver;
extern int gameWon;
extern int bossBattle;
# 55 "main.c" 2
# 1 "unknownEvent.h" 1

void initUnknownEvent();
void updateUnknownEvent();
void drawUnknownEvent();
# 56 "main.c" 2
# 1 "merchant.h" 1

void initMerchant();
void updateMerchant();
void drawMerchant();
# 57 "main.c" 2
# 1 "restSpot.h" 1

void initRestSpot();
void updateRestSpot();
void drawRestSpot();
# 58 "main.c" 2
# 1 "sound.h" 1
SOUND soundA;
SOUND soundB;

void setupSounds();
void playSoundA( const unsigned char* sound, int length, int frequency, int loops);
void playSoundB( const unsigned char* sound, int length, int frequency, int loops);

void setupInterrupts();
void interruptHandler();

void pauseSound();
void unpauseSound();
void stopSound();
# 59 "main.c" 2

# 1 "titleScreen.h" 1
# 22 "titleScreen.h"
extern const unsigned short titleScreenTiles[352];


extern const unsigned short titleScreenMap[1024];


extern const unsigned short titleScreenPal[256];
# 61 "main.c" 2
# 1 "instructionScreen.h" 1
# 22 "instructionScreen.h"
extern const unsigned short instructionScreenTiles[32];


extern const unsigned short instructionScreenMap[1024];


extern const unsigned short instructionScreenPal[256];
# 62 "main.c" 2
# 1 "battleScreen.h" 1
# 22 "battleScreen.h"
extern const unsigned short battleScreenTiles[448];


extern const unsigned short battleScreenMap[1024];


extern const unsigned short battleScreenPal[256];
# 63 "main.c" 2
# 1 "eventScreen.h" 1
# 22 "eventScreen.h"
extern const unsigned short eventScreenTiles[16];


extern const unsigned short eventScreenMap[1024];


extern const unsigned short eventScreenPal[256];
# 64 "main.c" 2
# 1 "mapScreen.h" 1
# 22 "mapScreen.h"
extern const unsigned short mapScreenTiles[128];


extern const unsigned short mapScreenMap[1024];


extern const unsigned short mapScreenPal[256];
# 65 "main.c" 2
# 1 "pauseScreen.h" 1
# 22 "pauseScreen.h"
extern const unsigned short pauseScreenTiles[208];


extern const unsigned short pauseScreenMap[1024];


extern const unsigned short pauseScreenPal[256];
# 66 "main.c" 2
# 1 "loseScreen.h" 1
# 22 "loseScreen.h"
extern const unsigned short loseScreenTiles[176];


extern const unsigned short loseScreenMap[1024];


extern const unsigned short loseScreenPal[256];
# 67 "main.c" 2
# 1 "winScreen.h" 1
# 22 "winScreen.h"
extern const unsigned short winScreenTiles[144];


extern const unsigned short winScreenMap[1024];


extern const unsigned short winScreenPal[256];
# 68 "main.c" 2
# 1 "cards.h" 1
# 21 "cards.h"
extern const unsigned short cardsTiles[16384];


extern const unsigned short cardsPal[256];
# 69 "main.c" 2
# 1 "punch.h" 1
# 20 "punch.h"
extern const unsigned char punch[5069];
# 70 "main.c" 2
# 1 "humanMusic.h" 1
# 20 "humanMusic.h"
extern const unsigned char humanMusic[198504];
# 71 "main.c" 2



void initialize();


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


SOUND soundA;
SOUND soundB;


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

    playSoundA(humanMusic, 198504, 11025, 1);
 while(1) {
        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);


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
        DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
 }
}


void initialize() {
    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12) ;
    (*(volatile unsigned short*)0x4000008) = (3<<14) | (0<<7) | ((0)<<2) | ((31)<<8);

    DMANow(3, cardsPal, ((unsigned short *)0x5000200), 512 / 2);
    DMANow(3, cardsTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
    srand(time(0));

    goToStart();
}


void goToStart() {
    hideSprites();
    clearAllOAM();
    DMANow(3, titleScreenPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, titleScreenTiles, ((charblock *)0x6000000), 704 / 2);
    DMANow(3, titleScreenMap, &((screenblock *)0x6000000)[31], 2048 / 2);
    state = START;
}


void start() {
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        stopSound();
        goToInstructions();
    }
}

void goToInstructions() {
    clearAllOAM();
    playSoundA(punch, 5069, 11025, 0);
    DMANow(3, instructionScreenPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, instructionScreenTiles, ((charblock *)0x6000000), 64 / 2);
    DMANow(3, instructionScreenMap, &((screenblock *)0x6000000)[31], 2048 / 2);
    state = INSTRUCTIONS;
}

void instructions() {
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))) || (!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
        initMap();
        goToMap();
    } else if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1)))) || (!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        goToStart();
    }
}

void goToMap() {
    clearAllOAM();
    initMapOAM();
    playSoundA(punch, 5069, 11025, 0);
    DMANow(3, mapScreenPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, mapScreenTiles, ((charblock *)0x6000000), 256 / 2);
    DMANow(3, mapScreenMap, &((screenblock *)0x6000000)[31], 2048 / 2);
    state = MAP;
}

void map() {
    updateMap();
    waitForVBlank();
    drawMap();


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
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
    DMANow(3, battleScreenPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, battleScreenTiles, ((charblock *)0x6000000), 896 / 2);
    DMANow(3, battleScreenMap, &((screenblock *)0x6000000)[31], 2048 / 2);
    state = BATTLE;
}

void battle() {
    updateBattle();
    waitForVBlank();
    drawBattle();


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
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
    DMANow(3, eventScreenPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, eventScreenTiles, ((charblock *)0x6000000), 32 / 2);
    DMANow(3, eventScreenMap, &((screenblock *)0x6000000)[31], 2048 / 2);
    state = MERCHANT;
}

void merchant() {
    updateMerchant();
    waitForVBlank();
    drawMerchant();


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        stateBeforePause = MERCHANT;
        goToPause();
    }

}

void goToUnknownEvent() {
    clearAllOAM();
    DMANow(3, eventScreenPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, eventScreenTiles, ((charblock *)0x6000000), 32 / 2);
    DMANow(3, eventScreenMap, &((screenblock *)0x6000000)[31], 2048 / 2);
    state = UNKNOWN_EVENT;
}

void unknownEvent() {
    updateUnknownEvent();
    waitForVBlank();
    drawUnknownEvent();


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        stateBeforePause = UNKNOWN_EVENT;
        goToPause();
    }

}

void goToRestSpot() {
    clearAllOAM();
    DMANow(3, eventScreenPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, eventScreenTiles, ((charblock *)0x6000000), 32 / 2);
    DMANow(3, eventScreenMap, &((screenblock *)0x6000000)[31], 2048 / 2);
    state = REST_SPOT;
}

void restSpot() {
    updateRestSpot();
    waitForVBlank();
    drawRestSpot();


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        stateBeforePause = REST_SPOT;
        goToPause();
    }

}



void goToPause() {
    playSoundA(punch, 5069, 11025, 0);
    hideSprites();
    DMANow(3, pauseScreenPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, pauseScreenTiles, ((charblock *)0x6000000), 416 / 2);
    DMANow(3, pauseScreenMap, &((screenblock *)0x6000000)[31], 2048 / 2);
    state = PAUSE;
}


void pause() {
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))))
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
    else if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2)))))
        goToStart();
}


void goToWin() {
    clearAllOAM();
    hideSprites();
    DMANow(3, winScreenPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, winScreenTiles, ((charblock *)0x6000000), 288 / 2);
    DMANow(3, winScreenMap, &((screenblock *)0x6000000)[31], 2048 / 2);
    state = WIN;
}


void win() {
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))))
        goToStart();
}


void goToLose() {
    clearAllOAM();
    hideSprites();
    DMANow(3, loseScreenPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, loseScreenTiles, ((charblock *)0x6000000), 352 / 2);
    DMANow(3, loseScreenMap, &((screenblock *)0x6000000)[31], 2048 / 2);
    state = LOSE;
}


void lose() {
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))))
        goToStart();
}
