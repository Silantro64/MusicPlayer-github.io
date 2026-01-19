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
//
//End Buttons Subprogram
