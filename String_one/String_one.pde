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
float stringImageX = appWidth * .8/4 ;
float stringImageY = appHeight * 1.1/10 ;
float stringImageWidth = appWidth * 1/2 ;
float stringImageHeight = appHeight * 3/5 ; // Make smaller to test landscape
//
//Strings, Text, Literal

rect(stringImageX, stringImageY, stringImageWidth, stringImageHeight);
//
//text(title, stringImageX, stringImageY);
