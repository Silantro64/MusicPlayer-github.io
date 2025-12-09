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
float stringImageX = appWidth *  1/4 ;
float stringImageY = appHeight * 1/10 ;
float stringImageWidth = appWidth * 1/2 ;
float stringImageHeight = appHeight * 1/10 ; // Make smaller to test landscape
//
//Strings, Text, Literal
String title = "Eleven";
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
//Aspect Ratio Calculation
color greenink = #6FCE1D ;
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org/reference
//Values: [LEFT | CENTER | RIGHT ]  & [TOP | CENTER | BOTTOM | BASELINE ]
float timesNewRomanAspectRatio = fontSizeTimesNewRoman/stringImageHeight;
println ("Times New Roman Aspect Ratio:", timesNewRomanAspectRatio);
fontSize = stringImageHeight*timesNewRomanAspectRatio;
println(); //Skip a line
//Note: DIV to "see" variables
rect( stringImageX, stringImageY, stringImageWidth, stringImageHeight );
//
//Hexidecimal
fill(greenink); //Ink, Grey Scale 0-255
textFont(titleFont, fontSize);
text(title, stringImageX, stringImageY, stringImageWidth, stringImageHeight );
