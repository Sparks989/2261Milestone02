#include <stdlib.h>
#include <stdio.h>
#include "mode0.h"
#include "game.h"
#include "notGame.h"

// Sprites
PLAYER player;

// Game Scenes

void characterSelect() {

}

// Easiest Level
void green() {

}

// Medium Level
void blue() {

}

// Hardest Level
void black() {

}

// Initializes the game

void greenInit() {

}

void blueInit() {

}

void blackInit() {

}

void playerInit() {

}

void rivalInit() {

}

void selectorInit() {

}

// Updates the Game

void updateGame() {

}

void updatePlayer() {

}

void updateRival() {

}

void updateSelector() {

}

// Draws the game

void drawPlayer() {

}

void drawRival() {

}

void drawSelector() {

}

// Jumping Functions
void jumpHeight(int speed) {
    if (speed < 25) {
        player.path = 0;
    } else if (speed < 35) {
        player.path = 1;
    } else if (speed < 45) {
        player.path = 2
    } else {
        player.path = 3
    }

}