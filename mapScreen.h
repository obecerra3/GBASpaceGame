
//{{BLOCK(mapScreen)

//======================================================================
//
//	mapScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 8 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 256 + 2048 = 2816
//
//	Time-stamp: 2019-04-18, 16:52:25
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MAPSCREEN_H
#define GRIT_MAPSCREEN_H

#define mapScreenTilesLen 256
extern const unsigned short mapScreenTiles[128];

#define mapScreenMapLen 2048
extern const unsigned short mapScreenMap[1024];

#define mapScreenPalLen 512
extern const unsigned short mapScreenPal[256];

#endif // GRIT_MAPSCREEN_H

//}}BLOCK(mapScreen)
