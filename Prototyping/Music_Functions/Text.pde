/* Text
 - Easy Text, default font, size
 - TBA
 */
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
  float fontSize = appHeight;
  PFont titleFont;
  String timesNewRoman = "Times New Roman";
  titleFont = createFont(timesNewRoman, fontSize);
  //
  float fontSizetimesNewRoman = 86.0;
  float timesNewRomanAspectRatio = fontSizetimesNewRoman / stringDivHeight;
  fontSize = stringDivHeight*timesNewRomanAspectRatio;
}
//end subprogram text
