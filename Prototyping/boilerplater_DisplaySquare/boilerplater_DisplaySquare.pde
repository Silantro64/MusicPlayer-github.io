/* Program Documentation & Notes
 - Largest Square Display Possible
 */
//Library - Minim
//
//Global Variables
//
void setup() {
  println(displayWidth, displayHeight);
  int shorterSide = (displayWidth < displayHeight) displayHeight : displayWidth; //Ternary Operator
  size(500, 500);
  //fullScreen(); //displayWidth, displayHeight
} //End Setup
//
void draw() {} //End Draw
//
void mousePressed() {} //End Mouse Pressed
//
void keyPressed() {} //End Key Pressed
