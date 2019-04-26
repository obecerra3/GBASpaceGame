
//{{BLOCK(titleScreen)

//======================================================================
//
//	titleScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 269 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 8608 + 2048 = 11168
//
//	Time-stamp: 2019-04-26, 02:59:58
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TITLESCREEN_H
#define GRIT_TITLESCREEN_H

#define titleScreenTilesLen 8608
extern const unsigned short titleScreenTiles[4304];

#define titleScreenMapLen 2048
extern const unsigned short titleScreenMap[1024];

#define titleScreenPalLen 512
extern const unsigned short titleScreenPal[256];

#endif // GRIT_TITLESCREEN_H

//}}BLOCK(titleScreen)
