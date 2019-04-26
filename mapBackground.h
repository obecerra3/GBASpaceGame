
//{{BLOCK(mapBackground)

//======================================================================
//
//	mapBackground, 512x512@4, 
//	+ palette 256 entries, not compressed
//	+ 269 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x64 
//	Total size: 512 + 8608 + 8192 = 17312
//
//	Time-stamp: 2019-04-26, 03:09:39
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MAPBACKGROUND_H
#define GRIT_MAPBACKGROUND_H

#define mapBackgroundTilesLen 8608
extern const unsigned short mapBackgroundTiles[4304];

#define mapBackgroundMapLen 8192
extern const unsigned short mapBackgroundMap[4096];

#define mapBackgroundPalLen 512
extern const unsigned short mapBackgroundPal[256];

#endif // GRIT_MAPBACKGROUND_H

//}}BLOCK(mapBackground)
