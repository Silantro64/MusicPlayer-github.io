/* Buttons
 - quitButton
 * DIVs
 - musicButtonShapes, 2-D Music Buttons
 */
//
void quitButton() {
  noLoop(); // Adjusts the exit of the program using finishing draw()
  exit(); // With noLoop(), exit happens here
  println("Final Line of mousePressed and finishes draw()");
}//End Quit Button
//
void DIVs() {
  rect(quitX, quitY, quitWidth, quitHeight);
  rect(playX, playY, playWidth, playHeight);
}//End DIVs
//
void musicButtonShapes() {
  triangle(playX1, playY1, playX2, playY2, playX3, playY3);
}
void quitButtonActive() {
  fill(quitBackgroundActivated);
  rect(quitX, quitY, quitWidth, quitHeight);
  fill(resetBackground);
  fill(quitButtonInk);



  //Note: rect() starts top-right corner, text() starts bottom-right corner
  text("X", quitX+quitWidth*1/2, quitY+quitHeight*3/5); //adjust fractions or decimals until working



  fill(resetInk);
} //End Quit Button Active
//
void quitButtonRegular() {
  fill(quitBackground);
  rect(quitX, quitY, quitWidth, quitHeight);
  fill(resetBackground);
  fill(quitButtonInk);



  //Note: rect() starts top-right corner, text() starts bottom-right corner
  text("X", quitX+quitWidth*1/2, quitY+quitHeight*3/5); //adjust fractions or decimals until working



  fill(resetInk);
} //End Quit Button Active
//
void playButtonActive() {
  fill(playColorBackgroundActivated);
  rect(playX, playY, playWidth, playHeight);
  fill(playColorSymbolActivated);



  triangle(playX1, playY1, playX2, playY2, playX3, playY3);



  fill(resetBackground);
} // End Play Button Active
//
void playButtonReady() {
  fill(playColorBackground);
  rect(playX, playY, playWidth, playHeight);
  fill(playColorSymbol);



  triangle(playX1, playY1, playX2, playY2, playX3, playY3);



  fill(resetBackground);
} // End Play Button Ready
//
void hoverOver_draw () {
    if (mouseX>quitX && mouseX<quitX+quitWidth && mouseY>quitY &&mouseY<quitY+quitHeight) {
    quitButtonActive();
  } else {
    quitButtonRegular();
  }//End Quit Button Hover Over
  if (mouseX>playX && mouseX<playX+playWidth && mouseY>playY && mouseY<playY+playHeight ) {
    if ( playButton == false ) playButtonActive();
  } else {
    //Order of below creates optical illusion - switching colours
    playButtonReady();
    if ( playButton == true ) playButtonActive();
  }
}
//
//End Buttons Subprogram
