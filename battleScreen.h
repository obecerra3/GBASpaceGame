
//{{BLOCK(battleScreen)

//======================================================================
//
//	battleScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 130 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 4160 + 2048 = 6720
//
//	Time-stamp: 2019-04-26, 04:10:59
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BATTLESCREEN_H
#define GRIT_BATTLESCREEN_H

#define battleScreenTilesLen 4160
extern const unsigned short battleScreenTiles[2080];

#define battleScreenMapLen 2048
extern const unsigned short battleScreenMap[1024];

#define battleScreenPalLen 512
extern const unsigned short battleScreenPal[256];

#endif // GRIT_BATTLESCREEN_H

//}}BLOCK(battleScreen)
