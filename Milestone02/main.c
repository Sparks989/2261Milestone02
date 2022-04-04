#include <stdlib.h>
#include <stdio.h>
#include "mode0.h"
#include "game.h"
#include "notGame.h"
#include "Background.h"
#include "SpriteSheet.h"
#include "print.h"

// Prototypes.
void initialize();

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
        case INSTRUCTIONS:
            instructions();
            break;
        case CHARACTER:
            characterSelect();
            break;
        case EASY:
            timer++;
            green();
            break;
        case MEDIUM:
            timer++;
            blue();
            break;
        case HARD:
            timer++;
            black();
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

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;

    buttons = BUTTONS;
    oldButtons = 0;

    hOff = 0;
    vOff = 0;

    mgba_open();

    goToStart();
}