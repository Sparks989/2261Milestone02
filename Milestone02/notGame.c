#include <stdlib.h>
#include <stdio.h>
#include "mode0.h"
#include "game.h"
#include "notGame.h"
#include "BGMap.h"



// Menu Scenes
void start() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        goToCharacterSelect();
    }
}

void instructions() {
    if (BUTTON_PRESSED(BUTTON_L) && !instructionPage) {
        goToStart();
    } 
    if (BUTTON_PRESSED(BUTTON_R) && !instructionPage) {
        instructionPage++;
    }
    if (BUTTON_PRESSED(BUTTON_L) && instructionPage) {
        instructionPage--;
    } 
    if (BUTTON_PRESSED(BUTTON_R) && instructionPage) {
        goToStart();
    }
}

void win() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        goToStart();
    }
}

void lose() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        goToStart();
    }
}

// State Transitions
// Sets up the start state.
void goToStart() {
    vOff = 0;
    hOff = 0;
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    state = START;
    timer = 0;
}

void goToInstructions() {
    hOff = 0;
    vOff = 160;
    instructionPage = 0;
    REG_DISPCTL = MODE0 | BG0_ENABLE;
    state = INSTRUCTIONS;
}

void goToCharacterSelect() {
    hOff = 240;
    vOff = 0;
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    state = CHARACTER;
}

// Sets up the game state.
void goToGreen() {
    hOff = 0;
    vOff = 0;
    DMANow(3, BGMapPal, PALETTE, 256);
    DMANow(3, BGMapTiles, &CHARBLOCK[0], BGMapTilesLen / 2);
    DMANow(3, BGMapMap, &SCREENBLOCK[28], 1024 * 4);
    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG0_ENABLE;
    state = EASY;
}

void goToBlue() {
    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG2_ENABLE;
    state = MEDIUM;
}

void goToBlack() {
    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG3_ENABLE;
    state = HARD;
}

// Sets up the pause state.
void goToPause() {
    hOff = 240;
    vOff = 160;
    REG_DISPCTL = MODE0 | BG0_ENABLE;
    state = PAUSE;
}

void goToWin() {
    REG_DISPCTL = MODE0 | BG0_ENABLE;
    state = WIN;
}

// Sets up the lose state.
void goToLose() {
    REG_DISPCTL = MODE0 | BG0_ENABLE;
    state = LOSE;
}