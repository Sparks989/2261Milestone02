
//{{BLOCK(Background)

//======================================================================
//
//	Background, 512x512@4, 
//	+ palette 256 entries, not compressed
//	+ 287 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x64 
//	Total size: 512 + 9184 + 8192 = 17888
//
//	Time-stamp: 2022-04-04, 08:18:29
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BACKGROUND_H
#define GRIT_BACKGROUND_H

#define BackgroundTilesLen 9184
extern const unsigned short BackgroundTiles[4592];

#define BackgroundMapLen 8192
extern const unsigned short BackgroundMap[4096];

#define BackgroundPalLen 512
extern const unsigned short BackgroundPal[256];

#endif // GRIT_BACKGROUND_H

//}}BLOCK(Background)
