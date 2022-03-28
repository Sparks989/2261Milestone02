#include <stdlib.h>
#include <stdio.h>
#include "mode0.h"
#include "game.h"
#include "notGame.h"

// Prototypes.
void initialize();

// State Prototypes.
void goToStart();
void goToInstructions()
void goToCharacterSelect();
void goToGreen();
void goToBlue();
void goToBlack();
void goToPause();
void goToWin();
void goToLose();

// States.
enum {START, INSTRUCTIONS, CHARACTER, GREEN, BLUE, BLACK, PAUSE, WIN, LOSE};
int state;

// Button Variables.
unsigned short buttons;
unsigned short oldButtons;

// Shadow OAM.
OBJ_ATTR shadowOAM[128];

int main() {
    initialize();

    while (1) {
        // Update button variables.
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine.
        switch (state) {
        case START:
            start();
            break;
        case GAME:
            game();
            break;
        case PAUSE:
            pause();
            break;
        case WIN:
            win();
            break;
        case LOSE:
            lose();
            break;
        }

        waitForVBlank();

        DMANow(3, shadowOAM, OAM, 512);
        REG_BG0HOFF = hOff;
        REG_BG0VOFF = vOff;
    }
}

// Sets up GBA.
void initialize() {

    DMANow(3, BackgroundPal, PALETTE, 256);
    DMANow(3, BackgroundTiles, &CHARBLOCK[0], BackgroundTilesLen / 2);
    DMANow(3, BackgroundMap, &SCREENBLOCK[28], 1024 * 4);

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_LARGE;

    DMANow(3, SpriteSheetPal, SPRITEPALETTE, 256);
    DMANow(3, SpriteSheetTiles, &CHARBLOCK[4], SpriteSheetTilesLen / 2);

    hideSprites();

    REG_DISPCTL = MODE4 | BG0_ENABLE | SPRITE_ENABLE;

    buttons = BUTTONS;
    oldButtons = 0;

    mgba_open();

    goToStart();
}

// Sets up the start state.
void goToStart() {
    REG_DISPCTL = MODE4 | SPRITE_ENABLE;
    state = START;
}

void goToInstructions() {
    REG_DISPCTL = MODE4 | SPRITE_DISABLE;
    state = INSTRUCTIONS;
}

void goToCharacterSelect() {
    REG_DISPCTL = MODE4 | SPRITE_ENABLE;
    state = CHARACTER;
}

// Sets up the game state.
void goToGreen() {
    REG_DISPCTL = MODE0 | SPRITE_ENABLE;
    state = GREEN;
}

void goToBlue() {
    REG_DISPCTL = MODE0 | SPRITE_ENABLE;
    state = BLUE;
}

void goToBlack() {
    REG_DISPCTL = MODE0 | SPRITE_ENABLE;
    state = BLACK;
}

// Sets up the pause state.
void goToPause() {
    REG_DISPCTL = MODE4 | SPRITE_DISABLE;
    state = PAUSE;
}

void goToWin() {
    REG_DISPCTL = MODE4 | SPRITE_DISABLE;
    state = WIN;
}

// Sets up the lose state.
void goToLose() {
    REG_DISPCTL = MODE4 | SPRITE_DISABLE;
    state = LOSE;
}