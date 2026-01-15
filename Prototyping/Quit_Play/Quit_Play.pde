//Global Variables
//
int appWidth, appHeight;
float quitX, quitY, quitWidth, quitHeight;
float playX, playY, playWidth, playHeight;
float playX1, playY1, playX2, playY2, playX3, playY3;
Boolean playButton=false;
//
color resetBackground, resetInk, resetBackgroundNight, resetInkNight;
color playColorBackground, playColorSymbol, playColorBackgroundActivated, playColorSymbolActivated;
color quitBackground, quitBackgroundActivated;
color quitButtonInk;
Boolean nightMode = false;
//
void setup() {
  //Display
  size(1200, 800);
  //fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  //Population
  quitX = appWidth * 5.75/10;
  quitY = appHeight * 0/10;
  quitWidth = appWidth * 0.8/16;
  quitHeight = appHeight * 0.8/11.6;
  playX = appWidth * 5/16;
  playY = appHeight * 6.3/11.6;
  playWidth = appWidth * 0.8/16;
  playHeight = appHeight * 0.8/11.6;
  playX1 = playX + playWidth * 1/4;
  playY1 = playY + playHeight * 1/4;
  playX2 = playX1 + playWidth * 1/2;
  playY2 = playY + playHeight * 1/2;
  playX3 = playX1;
  playY3 = playY + playHeight * 3/4;
  //DIVs
  rect(quitX, quitY, quitWidth, quitHeight);
  rect(playX, playY, playWidth, playHeight);
  triangle(playX1, playY1, playX2, playY2, playX3, playY3);
  //
  //Color Population
  nightMode = false;
  color black = 0; // Gray Scale, much smaller color, 256 bits
  color white = 255; // Gray Scale
  color grayScale = 256/2;
  color gray = #898989;
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
  } //
} //End setup
//
void draw() {
  //println("my mouse is", mouseX, mouseY);
  if (mouseX>playX && mouseX<playX+playWidth && mouseY>playY && mouseY<playY+playHeight)
  {
    //println("Celebration");
    playButton = true;
    fill(playColorBackgroundActivated);
    rect(playX, playY, playWidth, playHeight);
    fill(playColorSymbolActivated);
    triangle(playX1, playY1, playX2, playY2, playX3, playY3);
    fill(resetBackground);
  } else {
    //print(" ");
    playButton = false;
    fill(playColorBackground);
    rect(playX, playY, playWidth, playHeight);
    fill(playColorSymbol);
    triangle(playX1, playY1, playX2, playY2, playX3, playY3);
    fill(resetBackground);
  }
  //
  if (mouseX>quitX && mouseY<quitY+quitWidth && mouseX>quitX && mouseY<quitY+quitHeight) {
    fill(quitBackgroundActivated);
    rect(quitX, quitY, quitWidth, quitHeight);
    fill(resetBackground);
    fill(quitButtonInk);
    text("X", quitX+quitWidth*1/2, quitY+quitHeight*3/5);
    fill(resetInk);
  } else {
    fill(quitBackground);
    rect(quitX, quitY, quitWidth, quitHeight);
    fill(resetBackground);
    fill(quitButtonInk);
    text("X", quitX+quitWidth*1/2, quitY+quitHeight*3/5);
    fill(resetInk);
  } //End Quit Button Hover Over
}  //End draw
//
void mousePressed() {
  if (mouseX>quitX && mouseY<quitY+quitWidth && mouseX>quitX && mouseY<quitY+quitHeight) {
    quitbutton();
  }
  if (playButton == true) {
    println("Play My Song");
    playButton = false; //reset boolean for draw
  } else {
    println(" ");
  }
}//End Mouse Pressed
//
void keyPressed() {
  if (key=="Q" || key=="q");
  {
    quitButton();
    if (key=="D" || key=="d");
    colorpopulation();
  } //End Key Pressed
  //
  void quitButton() {
    noLoop(); //Adjusts the exit of the program using finishing draw()
    exit(); //With noLoop(), exit happens here
    println("Final Line of mousePressed and finishes draw()");
  }//End Quit Button
  //End MAIN Program
