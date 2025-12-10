/* String
 */
//
//Display
fullScreen(); //Landscape
//size(1200, 800); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//println("Display VARS", "appWidth:"+appWidth, "appHeight:"+appHeight,);
//println("\n\t\t\t\t\t\t\tFullScreen,", "\ndisplayWidth:"+displayWidth, "displayHeight:"+displayHeight, "width:"+width, "height:"+height);
//
//Population
float[] stringImageWidth1 = new float[3];
float stringImageX1= appWidth *  1/4 ;
float stringImageY1 = appHeight * 1/10 ;
stringImageWidth[1] = appWidth * 1/2 ;
float stringImageHeight1 = appHeight * 1/10 ; // Make smaller to test landscape
float stringImage2X = stringImageX1 ; //Cascading VARs
float stringImage2Y = appHeight * 3/10 ;
stringImageWidth[2] = appWidth * 1/4 ;
float stringImage2Height = stringImageHeight1; //Cascading VARs
float stringImage3X = stringImageX1 ;
float stringImage3Y = appHeight * 5/10 ;
stringImageWidth[3] = appWidth * 5/8 ;
float stringImage3Height = stringImageHeight1 ; //Cascading VARs
//
//Strings, Text, Literal
String title = "Eleven, Twelve, Thirteen, Fourteen";
/* Full String longer than Rectangle,  "Eleven, Twelve, Thirteen, Fourteen"
 - When a String just fits the height aspect ratio is the largest, sometimes >1
 - Fonts differs in WHITE SPACE around the foreground "coloured ink"
 */
// Students enter all text from Case Study

/*println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
 //Fonts from OS
 String[] fontList = PFont.list(); //To list all fonts available on system
 printArray(fontList); //For listing all possible fonts to choose, then createFont
 */
float fontSize = appHeight; //Entire Program
PFont titleFont; //Font Var name
String timesNewRoman = "Times New Roman"; //Spelling of the Font Matters
titleFont = createFont (timesNewRoman, fontSize);
//Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
//
println(fontSize, timesNewRoman, titleFont);
float fontSizeTimesNewRoman = 86.0;
//Hardcoded
println("Font Size:", fontSize);
/*Aspect Ratio Manipulations (changes to variables)
 - choose Aspect Ratio that must be multiplied: fontSize/titleHeight
 - Rewriting fontSize with formulas
 */
//Hexidecimal
color greenink = #6FCE1D ;
color whiteink = #FFFFFF ;
color resetink = whiteink ;
//Drawing Text
//ERROR Check fontSize, decreasing the text when wrapped or not shown
textFont(titleFont, fontSize); //see variable note
float constantDecrease = 0.99; //99% of original or 1% decrease
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org/reference
//Values: [LEFT | CENTER | RIGHT ] & [TOP | CENTER | BOTTOM | BASELINE ]
//
//FOR Loop Error, Copy * Paste 3 times
for (i=0; i<3; i++) {
  while (textWidth(title) > stringImageWidth[i]) {
  //ERROR: infinite loop, requires exit() & println()
  fontSize *= constantDecrease; //Assignment operator //fontSize = fontSize*0.99
  textFont(titleFont, fontSize); //see variable note
} //End WHILE Error Check Text-wrap
}//End FOR Loop, Font Size Check in DIVs
//
//Aspect Ratio Calculation
float timesNewRomanAspectRatio = fontSizeTimesNewRoman/stringImageHeight1;
println ("Times New Roman Aspect Ratio:", timesNewRomanAspectRatio);
fontSize = stringImageHeight1*timesNewRomanAspectRatio;
println(); //Skip a line
//Note: DIV to "see" variables
rect(stringImageX1, stringImageY1, stringImageWidth1, stringImageHeight1);
rect(stringImage2X, stringImage2Y, stringImageWidth2, stringImageHeight2);
rect(stringImage3X, stringImage3Y, stringImageWidth3, stringImageHeight3);
//
fill(greenink); //Ink, hexidecimal copied from Color Selector
for(int i=o; i<3; i++)
text(title, stringImageX[i], stringImageY[i], stringImageWidth1[i], stringImageHeight[i]);
text(title, stringImageX[i], stringImageY[i], stringImageWidth[i], stringImageHeight[i]);
text(title, stringImageX[i], stringImageY[i], stringImageWidth[i], stringImageHeight[i]);
fill(resetink);
