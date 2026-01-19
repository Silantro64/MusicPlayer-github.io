/* List of Buttons and Code Colors
 - Quit
 - Play, Boolean Only
 */
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
// End Button Subprogram
