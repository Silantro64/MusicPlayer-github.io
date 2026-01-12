//Global Variables
//
int appWidth, appHeight;
float quitX, quitY, quitWidth, quitHeight;
float playX, playY, playWidth, playHeight;
float playX1, playY1, playX2, playY2, playX3, playY3;
Boolean playButton;
//
void setup() {
  //Display
  size(1200, 800);
  //fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  //Population
  quitX = appWidth * 9/10;
  quitY = appHeight * 0/10;
  quitWidth = appWidth * 1/10;
  quitHeight = appHeight * 1/10;
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
  color black = 0; // Gray Scale, much smaller color, 256 bits
  color white = 0; // Gray Scale
  //Canvas:  defalut background and ink
  resetBackground = white;
  resetInk = black;
  //
} //End setup
//
void draw() {
  //println("my mouse is", mouseX, mouseY);
  if (mouseX>playX && mouseX<playX+playWidth && mouseY>playY && mouseY<playY+playHeight)
  {
    //println("Celebration");
    playButton = true;
  } else {
    //print(" ");
  }
} //End draw
//
void mousePressed() {
  if (playButton == true) {
    println("Play My Song");
  } else {
    println(" ");
  }
}//End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program
