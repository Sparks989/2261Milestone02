// Stage Functions
void characterSelect();
void green();
void blue();
void black();
void pause();

// Structs
typedef struct {
    int row;
    int col;
    int rdel;
    int cdel;
    int width;
    int height;
    int speed;
    int path;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int active;
} PLAYER;

typedef struct {
    int row;
    int col;
    int rdel;
    int cdel;
    int width;
    int height;
    int active;
} SELECTOR;

// Variables
#define SELECTORCOUNT 3

// Enums
enum {SPRITEFRONT, SPRITEBACK, SPRITERIGHT, SPRITELEFT, SPRITEIDLE};

// Prototypes
void greenInit();
void blueInit();
void blackInit();
void playerInit();
void rivalInit();