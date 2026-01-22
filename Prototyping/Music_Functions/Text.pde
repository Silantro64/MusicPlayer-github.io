/* Text
 - Easy Text, default font, size
 - TBA
 */
 //global variables
 float fontSize;
 PFont titleFont;
String songTitle;
//
/*void easyTextQuitButton() {
 text("X", quitX+quitWidth*1/2, quitY+quitHeight*3/5); //adjust fractions or decimals until working
 } //end easy text
 */
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
  float timesNewRomanAspectRatio = fontSizetimesNewRoman / stringDivHeight;
  fontSize = stringDivHeight*timesNewRomanAspectRatio;
} //end text setup
//
void textdraw() {
  fill(greenInk); //Ink, hexadecimal copied from Color Selector
//Grey Scale 0-255
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
//ERROR Check fontSize, decreasing the text when wrapped or not shown
textFont(titleFont, fontSize); //see variable note

//ERROR


float constantDecrease = 0.99;  //99% of original or 1% decrease
//FOR Loop Error, Copy * Paste three times
int iWhile=0; //Counting iterations of WHILE, adjust with optimization and pixel decrease adjustment algorithm
for ( int i=0; i<3; i++ ) {
  while ( textWidth(playListMetaData[currentSong].title()) > stringImageWidth[i] ) {
    iWhile++;
    //ERROR: infinite loop, requires exit() & println()
    fontSize *= constantDecrease; //Assignment Operator  //fontSize = fontSize*0.99;
    textFont(titleFont, fontSize); //see variable note
  } //End WHILE Error Check Text-wrap
  println("Iterations of WHILE:", iWhile, "\tDifference of imageWidth & textWidth:", stringImageWidth[i]-textWidth(playListMetaData[currentSong].title()), "\tUsing", constantDecrease*100+"%" ); //Plus sign is concatenation for % symbol, exemplar
} //End FOR Loop, Font Size Check in DIVs
//WHILE Error Check
//textFont() has option to combine font declaration with textSize()
//textFont() is better for more than one PFont Variable
//
for ( int i=0; i<numberOfDIVs; i++ ) {
  text( title, stringImageX[i], stringImageY[i], stringImageWidth[i], stringImageHeight[i] );
}
fill(resetInk);
//
}
//end subprogram text
