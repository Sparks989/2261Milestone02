// Stage Functions
void start();
void instructions();
void win();
void lose();

// State Prototypes.
void goToStart();
void goToInstructions();
void goToCharacterSelect();
void goToGreen();
void goToBlue();
void goToBlack();
void goToPause();
void goToWin();
void goToLose();

// Variables
int instructionPage;
int state;
enum {START, INSTRUCTIONS, CHARACTER, EASY, MEDIUM, HARD, PAUSE, WIN, LOSE};
