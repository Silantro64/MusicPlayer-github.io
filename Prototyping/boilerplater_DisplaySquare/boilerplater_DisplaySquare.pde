/* Program Documentation & Notes
 - Largest Square Display Possible on any display
 */
//Library - Minim
//
//Global Variables
//
void settings() {
   println(displayWidth, displayHeight);
  int shorterSide = (displayWidth < displayHeight) ? displayHeight : displayWidth; //Ternary Operator
  shorterSide *= 0.9; //90%, WINDOW Frame
  size(shorterSide, shorterSide);
} //End Settings
//
void setup() {
/* println(displayWidth, displayHeight);
  int shorterSide = (displayWidth < displayHeight) ? displayHeight : displayWidth; //Ternary Operator
  shorterSide *= 0.9; //90%
  size(shorterSide, shorterSide);
  //fullScreen(); //displayWidth, displayHeight
  */
} //End Setup
//
void draw() {} //End Draw
//
void mousePressed() {} //End Mouse Pressed
//
void keyPressed() {} //End Key Pressed
