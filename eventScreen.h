
//{{BLOCK(eventScreen)

//======================================================================
//
//	eventScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 1 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 32 + 2048 = 2592
//
//	Time-stamp: 2019-04-04, 13:49:11
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_EVENTSCREEN_H
#define GRIT_EVENTSCREEN_H

#define eventScreenTilesLen 32
extern const unsigned short eventScreenTiles[16];

#define eventScreenMapLen 2048
extern const unsigned short eventScreenMap[1024];

#define eventScreenPalLen 512
extern const unsigned short eventScreenPal[256];

#endif // GRIT_EVENTSCREEN_H

//}}BLOCK(eventScreen)
