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
    int spriteX;
    int spriteY;
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
    int position;
    int spriteX;
    int spriteY;
} SELECTOR;

// Variables
#define SELECTORCOUNT 3
int timer;
int hOff;
int vOff;
#define mapWidth 512

// Enums
enum {SPRITEFRONT, SPRITEBACK, SPRITERIGHT, SPRITELEFT, SPRITEIDLE};

// Prototypes
void greenInit();
void blueInit();
void blackInit();
void playerInit();
void selectorInit();
void updateGame();
void updatePlayer();
void updateSelector();
void drawGame();
void drawPlayer();
void drawSelector();
void jumpHeight(int speed);