
//{{BLOCK(titleScreen)

//======================================================================
//
//	titleScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 440 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 14080 + 2048 = 16640
//
//	Time-stamp: 2019-04-26, 04:58:31
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TITLESCREEN_H
#define GRIT_TITLESCREEN_H

#define titleScreenTilesLen 14080
extern const unsigned short titleScreenTiles[7040];

#define titleScreenMapLen 2048
extern const unsigned short titleScreenMap[1024];

#define titleScreenPalLen 512
extern const unsigned short titleScreenPal[256];

#endif // GRIT_TITLESCREEN_H

//}}BLOCK(titleScreen)
