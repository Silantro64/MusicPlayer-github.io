import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
//All Global Variables execute first ... A global Variable is a Global Variable
int appWidth, appHeight;
float quitX, quitY, quitWidth, quitHeight;
float playX, playY, playWidth, playHeight;
float playX1, playY1, playX2, playY2, playX3, playY3;
//
Boolean playButton=false, quitButton=false;
//
color resetBackground, resetInk, resetBackgroundDay, resetInkDay, resetBackgroundNight, resetInkNight;
color quitButtonInk;
color playColorBackground, playColorSymbol, playColorBackgroundActivated, playColorSymbolActivated;
color quitBackground, quitBackgroundActivated;
Boolean nightMode=false;
/*
void settings() {
 println(displayWidth, displayHeight);
 int shorterSide = ( displayWidth > displayHeight ) ? displayHeight : displayWidth ; //Ternary Operator
 shorterSide *= 0.9; //90%, WINDOW Frame
 size(shorterSide, shorterSide); //ERROR IllegalStateException: cannot use a var in size()
 println("Display Questions", displayWidth, displayHeight, shorterSide);
 println("CANVAS Size Key Variables for setup()", width, height);
 } //End settings
 */
void setup() {
  //Display CANVAS
  //size(); //width //height
  fullScreen(); //displayWidth //displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  divPopulation();
  DIVs();
  musicButtonShapes();
  //
  color black = 0; // Gray Scale, much smaller color, 256 bits
  color white = 255; // Gray Scale
  color grayScale = 255/2;
  color gray = #CECECE;
  //Canvas:  default background and ink
  resetBackground = white;
  resetInk = black;
  resetBackgroundNight = 256/4;
  resetInkNight = int(256*0.75);
  //Button Colors
  color red = #CB2525;
  color blue = #4BB2FF;
  color yellow = #FFE043;
  color darkGray = grayScale;
  color lightGray = gray;

  if ( nightMode == true ) {
    resetBackground = resetBackgroundNight;
    resetInk = resetInkNight;
    playColorBackground = darkGray;
    playColorSymbol = lightGray;
    playColorBackgroundActivated = lightGray;
    playColorSymbolActivated = darkGray;
    quitBackground = lightGray;
    quitBackgroundActivated = red;
    quitButtonInk = darkGray;
  } else {
    playColorBackground = yellow;
    playColorSymbol = blue;
    playColorBackgroundActivated = blue;
    playColorSymbolActivated = yellow;
    quitBackground = white;
    quitBackgroundActivated = red;
    quitButtonInk = black;
  }
  //
  //DIVs
  //
} //End setup
//
void draw() {
  if ( mouseX>quitDivX && mouseX<quitDivX+quitDivWidth && mouseY>quitDivY &&mouseY<quitDivY+quitDivHeight ) {
    quitButtonActive();
  } else {
    quitButtonRegular();
  }//End Quit Button Hover Over
  if ( mouseX>playDivX && mouseX<playDivX+playDivWidth && mouseY>playDivY && mouseY<playDivY+playDivHeight ) {
    if ( playButton == false ) playButtonActive();
  } else {
    //Order of below creates optical illusion - switching colours
    playButtonReady();
    if ( playButton == true ) playButtonActive();
  }
} //End draw
//
void mousePressed() {
  if (mouseX>quitX && mouseY<quitY+quitWidth && mouseX>quitX && mouseY<quitY+quitHeight) {
    quitButton();
  }
} //End Mouse Pressed
//
void keyPressed() {
  if (key == 'Q' || key == 'q') { // Removed semicolon
    quitButton();
  }
  if (key == 'D' || key == 'd') { // Removed semicolon
    colorPopulation();
  }
} //End Key Pressed
//

//
//End MAIN Program
