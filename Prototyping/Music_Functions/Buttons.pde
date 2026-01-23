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
  quit();
  play();
  titleDIV();
}//End DIVs
//
void quit() {
  rect(quitX, quitY, quitWidth, quitHeight);
} //end quit button DIV
//
void play() {
  rect(playX, playY, playWidth, playHeight);
}//end play button div
//
void titleDiv() {
  rect(stringImageX, stringImageY, stringImageWidth, stringImageHeight);
}
//
void playButtonSymbol() {
  triangle(playX1, playY1, playX2, playY2, playX3, playY3);
}//end play button symbol
//
void musicButtonShapes() {
  playButtonSymbol();
}
void quitButtonActive() {
  fill(quitBackgroundActivated);
  quitDIV();
  fill(quitButtonInk);
  fill(resetBackground);
  easyTextQuitButton();
  fill(resetInk);
} //End Quit Button Active
//
void quitButtonRegular() {
  fill(quitBackground);
  quitDIV();
  fill(resetBackground);
  fill(quitButtonInk);
  easyTextQuitButton();
  fill(resetInk);
} //End Quit Button Active
//
void playButtonActive() {
  fill(playColorBackgroundActivated);
  playDIV();
  fill(playColorSymbolActivated);
  playButtonSymbol();
  fill(resetBackground);
} // End Play Button Active
//
void playButtonReady() {
  fill(playColorBackground);
  playDIV();
  fill(playColorSymbol);
  playButtonSymbol();
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
