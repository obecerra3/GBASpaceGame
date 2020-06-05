
//{{BLOCK(eventScreen)

//======================================================================
//
//	eventScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 74 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2368 + 2048 = 4928
//
//	Time-stamp: 2019-04-26, 02:59:09
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_EVENTSCREEN_H
#define GRIT_EVENTSCREEN_H

#define eventScreenTilesLen 2368
extern const unsigned short eventScreenTiles[1184];

#define eventScreenMapLen 2048
extern const unsigned short eventScreenMap[1024];

#define eventScreenPalLen 512
extern const unsigned short eventScreenPal[256];

#endif // GRIT_EVENTSCREEN_H

//}}BLOCK(eventScreen)
