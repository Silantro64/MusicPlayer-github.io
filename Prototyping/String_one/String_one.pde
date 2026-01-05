/*Strings
*/
//
fullScreen(); //Landscape
//size(1200, 800); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\t\t\t\tFullScreen, displayWidth:\t"+displayWidth, "\tdisplayHeight:\t"+displayHeight, "\n\t\t\t\tSize\t, width:\t\t"+width, "\theight:\t\t"+height);
//
//Population
int numberOfDIVs = 3; //Note difference between human and comptuer counting
float[] stringImageX = new float[numberOfDIVs];
float[] stringImageY = new float[numberOfDIVs];
float[] stringImageWidth = new float[numberOfDIVs];
float[] stringImageHeight = new float[numberOfDIVs];
stringImageX[0] = appWidth*0.5/2; 
stringImageY[0] = appHeight*0.5/5;
stringImageWidth[0] = appWidth*0.5/1;
stringImageHeight[0] = appHeight*0.5/5; // ** Make smaller to test height
stringImageX[1] = stringImageX[0]; //Cascading VARs
stringImageY[1] = appHeight*1.5/5;
stringImageWidth[1] = appWidth*0.5/2;
stringImageHeight[1] = stringImageHeight[0]; //Cascading VARs
stringImageX[2] = stringImageX[0]; //Cascading VARs
stringImageY[2] = appHeight*2.5/5;
stringImageWidth[2] = appWidth*2.5/4;
stringImageHeight[2] = stringImageHeight[0]; //Cascading VARs
//
//Strings, Text, Literal
String title = "Eleven, Twelve, Thirteen, Fourteen"; //2D
/* Full String longer than Rectangle, "Eleven"
 - When a String just fits the height aspect ratio is the largest, sometimes >1
 - Fonts differs in WHITE SPACE around the foreground "coloured ink"
 */
// Students enter all text from Case Study
//
/*Fonts from OS
 println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
 String[] fontList = PFont.list(); //To list all fonts available on system
 printArray(fontList); //For listing all possible fonts to choose, then createFont
 //Spelling Counts and must compare CONSOLE v Tools / Create Font / Create Font Spelling
 //Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
 */
//Note: pass appHeight into fontSize and resize, passing a smallest number does not make this error
//CAUTION: strange things happen with font sizes, should have WHILE Check and Percentage Decrease Check
float fontSize = appHeight; //Entire Program, Algorithm to have smallest font size
PFont titleFont; //Font Variable Name, able to have more than one Font
String timesNewRoman = "Times New Roman"; //Spelling of the Font Matters, see PFont.list() v Create Font above
//Reminder: only letters ending with numbers, underscore means camelCase or snake_case
//Mispelling will cause a very odd error
titleFont = createFont(timesNewRoman, fontSize);
//
/*Measuring Aspect Ratio for Specific Font
 - Use only one DIV
 - Apply to other DIVs
 */
//println("Font Size:", fontSize, "\tFont Spelling:", timesNewRoman, "\tFont Varaiable Confirmation:", titleFont); //Inspect PFont-type Varaible for Harddrive Address v value
float fontSizeTimesNewRoman = 86.0; //Change the number until it fits, largest font size
float divHeightTimesNewRoman = stringImageHeight[0];
//println("Font Size:", fontSize );
/* Aspect Ratio Manipulations (changes to variables)
 - choose Aspect Ratio that must be mutliplied: fontSize/titleHeight
 - Rewriting fontSize with formulae
 */
//
//Note: DIV to "see" variables
for ( int i=0; i<numberOfDIVs; i++ ) {
  rect( stringImageX[i], stringImageY[i], stringImageWidth[i], stringImageHeight[i] );
} //End FOR DIVs
//
//Aspect Ratio Calculation
float timesNewRomanAspectRatio = fontSizeTimesNewRoman / divHeightTimesNewRoman;
//Finding the smallest fontSize in the smallest DIV
fontSize = stringImageHeight[0]*timesNewRomanAspectRatio; // Font fits in first DIV only
//println("Times New Roman Aspect Ratio:", timesNewRomanAspectRatio, "\tFont Size:", fontSize);
//println(); //Skip a line
//
//Drawing Text
//Minimum Lines of code to format, draw text with color, and become aware of other functions
//Must be before text()
color greenInk = #6FCE1D;
color whiteInk = #FFFFFF; //Grey Scale is 255
color resetInk = whiteInk;
fill(greenInk); //Ink, hexidecimal copied from Color Selector
//Grey Scale 0-255
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
//ERROR Check fontSize, decreasing the text when wrapped or not shown
textFont(titleFont, fontSize); //see variable note
float constantDecrease = 0.99;  //99% of original or 1% decrease
//FOR Loop Error, Copy * Paste three times
int iWhile=0; //Counting iterations of WHILE, adjust with optimization and pixel decrease adjustment algorithm
for ( int i=0; i<3; i++ ) {
  while ( textWidth( title ) > stringImageWidth[i] ) {
    iWhile++;
    //ERROR: infinite loop, requires exit() & println()
    fontSize *= constantDecrease; //Assignment Operator  //fontSize = fontSize*0.99;
    textFont(titleFont, fontSize); //see variable note
  } //End WHILE Error Check Text-wrap
  println("Iterations of WHILE:", iWhile, "\tDifference of imageWidth & textWidth:", stringImageWidth[i]-textWidth( title ), "\tUsing", constantDecrease*100+"%" ); //Plus sign is concatenation for % symbol, exemplar
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
