# 1 "myLib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "myLib.c"
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
# 2 "myLib.c" 2


unsigned short *videoBuffer = (unsigned short *)0x6000000;


DMA *dma = (DMA *)0x40000B0;


void setPixel3(int row, int col, unsigned short color) {
 videoBuffer[((row)*(240)+(col))] = color;
}


void setPixel4(int row, int col, unsigned char colorIndex) {

    unsigned short pixelData = videoBuffer[((row)*(240)+(col))/2];
    if (col & 1) {
        pixelData &= 0x00FF;
        pixelData |= (colorIndex << 8);
    } else {
        pixelData &= 0xFF00;
        pixelData |= colorIndex;
    }
    videoBuffer[((row)*(240)+(col))/2] = pixelData;
}


void drawRect3(int row, int col, int height, int width, volatile unsigned short color) {

 for(int r = 0; r < height; r++) {
        DMANow(3, &color, &videoBuffer[((row+r)*(240)+(col))], (2 << 23) | width);
 }
}


void drawRect4(int row, int col, int height, int width, volatile unsigned char colorIndex) {

    volatile unsigned short pixelData = colorIndex | (colorIndex<<8);
    for (int r = 0; r < height; r++) {
        if (col & 1) {
            if (width & 1) {
                setPixel4(row + r, col, colorIndex);
                if (width > 1) {
                    DMANow(3, &pixelData, &videoBuffer[((r+row)*(240)+(col+1))/2], (2 << 23) | width/2);
                }
            } else {
                setPixel4(row + r, col, colorIndex);
                if (width > 2) {
                    DMANow(3, &pixelData, &videoBuffer[((r+row)*(240)+(col+1))/2], (2 << 23) | (width/2-1));
                }
                setPixel4(row + r, col+width-1, colorIndex);
            }
        } else {
            if (width & 1) {
                if (width > 1) {
                    DMANow(3, &pixelData, &videoBuffer[((r+row)*(240)+(col))/2], (2 << 23) | width/2);
                }
                setPixel4(row + r, col+width-1, colorIndex);
            } else {
                DMANow(3, &pixelData, &videoBuffer[((r+row)*(240)+(col))/2], (2 << 23) | width/2);
            }
        }
    }
}


void fillScreen3(volatile unsigned short color) {

 DMANow(3, &color, videoBuffer, (2 << 23) | (240 * 160));
}


void fillScreen4(volatile unsigned char colorIndex) {

    volatile unsigned short pixelData = colorIndex | (colorIndex<<8);
    DMANow(3, &pixelData, videoBuffer, (2 << 23) | (240 * 160 / 2));
}


void drawImage3(int row, int col, int height, int width, const unsigned short *image) {

    for(int r = 0; r < height; r++) {
        DMANow(3, &image[((r)*(width)+(0))], &videoBuffer[((row+r)*(240)+(col))], width);
    }
}


void drawImage4(int row, int col, int height, int width, const unsigned short *image) {

    for(int r = 0; r < height; r++) {
        DMANow(3, &image[((r)*(width)+(0))/2], &videoBuffer[((row+r)*(240)+(col))/2], width/2);
    }
}


void drawFullscreenImage3(const unsigned short *image) {

    DMANow(3, image, videoBuffer, 240 * 160);
}


void drawFullscreenImage4(const unsigned short *image) {

    DMANow(3, image, videoBuffer, 240 * 160 / 2);
}


void waitForVBlank() {

 while((*(volatile unsigned short *)0x4000006) > 160);
 while((*(volatile unsigned short *)0x4000006) < 160);
}


void flipPage() {

    if ((*(unsigned short *)0x4000000) & (1<<4)) {
        videoBuffer = ((unsigned short *)0x600A000);
    } else {
        videoBuffer = ((unsigned short *)0x6000000);
    }
    (*(unsigned short *)0x4000000) ^= (1<<4);
}


void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt) {


    dma[channel].cnt = 0;


    dma[channel].src = src;
    dma[channel].dst = dst;


    dma[channel].cnt = cnt | (1 << 31);
}


int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB) {

    return rowA < rowB + heightB - 1 && rowA + heightA - 1 > rowB
        && colA < colB + widthB - 1 && colA + widthA - 1 > colB;
}

int spriteCollision(ANISPRITE sprite1, ANISPRITE sprite2) {
    return collision(sprite1.screenRow + sprite1.rowOffset, sprite1.screenCol + sprite1.colOffset, sprite1.height, sprite1.width, sprite2.screenRow + sprite2.rowOffset, sprite2.screenCol + sprite2.colOffset, sprite2.height, sprite2.width);
}


void hideSprites() {
    for (int i = 0; i < 125; i++) {
        shadowOAM[i].attr0 = (2<<8);
    }
}


int getOAMIndex() {
    for (int i = 0; i < 125; i++) {
        if (oamIndexMask[i] == 0) {
            oamIndexMask[i] = 1;
            return i;
        }
    }
    return -1;
}

void freeOAMIndex(int i) {
    oamIndexMask[i] = 0;
}

void clearAllOAM() {
    for (int i = 0; i < 128; i++) {
        oamIndexMask[i] = 0;
    }
}

void printNum(int row, int col, int num) {
    int nums[3] = {-1,-1,-1};
    int i = 0;
    while (num > 0) {
        nums[i] = num % 10;
        num = num / 10;
        i++;
    }
    if (nums[2] != -1) {
        shadowOAM[125].attr0 = (row & 0xFF) | (0<<8) | (2<<14) | (0<<13);
        shadowOAM[125].attr1 = (col & 0x1FF) | (0<<14);
        shadowOAM[125].attr2 = ((24)*32+(nums[2]));
    }
    if (nums[1] != -1) {
        shadowOAM[126].attr0 = (row & 0xFF) | (0<<8) | (2<<14) | (0<<13);
        shadowOAM[126].attr1 = ((col+5) & 0x1FF) | (0<<14);
        shadowOAM[126].attr2 = ((24)*32+(nums[1]));
    }

    if (nums[0] != -1) {
        shadowOAM[127].attr0 = (row & 0xFF) | (0<<8) | (2<<14) | (0<<13);
        shadowOAM[127].attr1 = ((col+10) & 0x1FF) | (0<<14);
        shadowOAM[127].attr2 = ((24)*32+(nums[0]));
    }
}
