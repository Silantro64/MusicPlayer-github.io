/* Text
 - Easy Text, default font, size
 - TBA
 */
//
void drawText() {
  textdraw();
  songTitle();
} // End Draw Text
//
void easyTextQuitButton() {
 text("X", quitX+quitWidth*1/2, quitY+quitHeight*3/5); //adjust fractions or decimals until working
 } //end easy text
 
void textSetup() {
  /*Fonts from OS
   println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   //Spelling Counts and must compare CONSOLE v Tools / Create Font / Create Font Spelling
   //Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
   */
  fontSize = appHeight;
  titleFont;
  String timesNewRoman = "Times New Roman";
  titleFont = createFont(timesNewRoman, fontSize);
  //
  float fontSizetimesNewRoman = 86.0;
  float timesNewRomanAspectRatio = fontSizetimesNewRoman / stringImageHeight;
  fontSize = stringImageHeight*timesNewRomanAspectRatio;
} //end text setup
//
void textdraw() {
  textFont(titleFont, fontSize); //see variable note
  float constantDecrease = 0.99;
  int iWhile=0;
  while ( textWidth( playListMetaData[currentSong].title() ) > stringImageWidth ) {
    iWhile++;
    //ERROR: infinite loop, requires exit() & println()
    fontSize *= constantDecrease;
    textFont(titleFont, fontSize);
}
void songTitle() {
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  fill(titleInk); //Ink, hexidecimal copied from Color Selector
  text( songTitle, stringImageX, stringImageY, stringImageWidth, stringImageHeight );
  fill(resetInk);
}
//end subprogram text
