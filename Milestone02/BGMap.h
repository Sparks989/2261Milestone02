
//{{BLOCK(BGMap)

//======================================================================
//
//	BGMap, 512x512@4, 
//	+ palette 256 entries, not compressed
//	+ 6 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x64 
//	Total size: 512 + 192 + 8192 = 8896
//
//	Time-stamp: 2022-04-04, 11:17:01
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BGMAP_H
#define GRIT_BGMAP_H

#define BGMapTilesLen 192
extern const unsigned short BGMapTiles[96];

#define BGMapMapLen 8192
extern const unsigned short BGMapMap[4096];

#define BGMapPalLen 512
extern const unsigned short BGMapPal[256];

#endif // GRIT_BGMAP_H

//}}BLOCK(BGMap)
