#include <stdlib.h>
#include <stdio.h>
#include "mode0.h"
#include "game.h"
#include "notGame.h"
#include "CollisionMap.h"

// Sprites
PLAYER player;
SELECTOR cursors[SELECTORCOUNT];

unsigned char* collisionMap = (unsigned char*)CollisionMapBitmap;

// Game Scenes

void characterSelect() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        goToGreen();
    }


    //if (!cursors[2].position) {
    //    goToGreen();
    //} else if (cursors[2].position == 1) {
    //    goToBlue();
    //} else if (cursors[2].position == 2) {
    //    goToBlack();
    //}
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

void pause() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

// Initializes the game

void greenInit() {

}

void blueInit() {

}

void blackInit() {

}

void playerInit() {
    player.row = 32;
    player.col = 16;
    player.width = 32;
    player.height = 64;
    player.speed = 5;
    player.path = 0;
    player.spriteX = 0;
    player.spriteY = 0;
    player.active = 0;
}

void selectorInit() {

}

// Updates the Game

void updateGame() {
    updatePlayer();
}

void updatePlayer() {

    // Controls Player Speed
    if (BUTTON_HELD(BUTTON_DOWN) && player.speed < 45) {
        // Increases speed if crouching
        player.speed++;
    } else if (BUTTON_HELD(BUTTON_DOWN)) {
        // Keeps speed constant if at max
        player.speed = player.speed;
    }else if (player.speed == 30) {
        // Keeps speed constant if at avg
        player.speed = player.speed;
    } else if (player.speed < 30) {
        // Speeds player up if below avg speed
        player.speed++;
    } else if (player.speed > 30) {
        player.speed--;
    }

    // Controls Horizontal Speed
    if (player.speed < 25) {
        if (!timer %20) {
            hOff++;
        }
    } else if (player.speed < 35) {
        if (!timer %15) {
            hOff++;
        }
    } else if (player.speed < 45) {
        if (!timer %10) {
            hOff++;
        }
    }

    // Controls Vertical Speed
    if (collisionCheck(*collisionMap, mapWidth, player.col, player.row, player.width, player.height, hOff, vOff)) {
        // Jump zone
        jumpHeight(player.speed);
        if (!player.path) {
            if (player.speed > 35) {
                vOff++;
            } else {
                vOff--;
            }
        } else if (player.path == 1) {
            if (player.path > 30) {
                vOff++;
            } else {
                vOff--;
            }
        } else if (player.path == 2) {
            vOff--;
        }
    } else if (collisionCheck(*collisionMap, mapWidth, player.col, player.row, player.width, player.height/2, hOff, vOff) == 1) {
        // Moves down
        if (player.speed < 25) {
            if (!timer %20) {
                vOff--;
            }
        } else if (player.speed < 35) {
            if (!timer %15) {
                vOff--;
            }
        } else if (player.speed < 45) {
            if (!timer %10) {
                vOff--;
            }
        }   
    } else if (collisionCheck(*collisionMap, mapWidth, player.col, player.row, player.width, player.height/2, hOff, vOff) == 2) {
        // Moves to the side
        vOff = vOff;
    } else if (collisionCheck(*collisionMap, mapWidth, player.col, player.row, player.width, player.height/2, hOff, vOff) == 3) {
        // Moves Up
        if (player.speed < 25) {
            if (!timer %20) {
                vOff++;
            }
        } else if (player.speed < 35) {
            if (!timer %15) {
                vOff++;
            }
        } else if (player.speed < 45) {
            if (!timer %10) {
                vOff++;
            }
        } 
    }

    // Controls Ground Animations

    // Controls Air Animations
    
}

void updateSelector() {

}

// Draws the game

void drawGame() {
    drawPlayer();
    for (int i = 0; i < SELECTORCOUNT; i++) {
        drawSelector(&cursors[i], i);
    }
}

void drawPlayer() {
    shadowOAM[0].attr0 = ((player.row) & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = ((player.col) & COLMASK) | ATTR1_MEDIUM;
    shadowOAM[0].attr2 = ATTR2_TILEID(player.spriteX, player.spriteY);
}

void drawSelector(SELECTOR* c, int i) {
    shadowOAM[1+i].attr0 = ((c->row) & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[1+i].attr1 = ((c->col) & COLMASK) | ATTR1_SMALL;
    shadowOAM[1+i].attr2 = ATTR2_TILEID(c->spriteX, c->spriteY);
}

// Jumping Functions
void jumpHeight(int speed) {
    if (speed < 25) {
        player.path = 0;
    } else if (speed < 35) {
        player.path = 1;
    } else if (speed < 45) {
        player.path = 2;
    }
}