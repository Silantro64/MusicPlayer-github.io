/* Aspect Ratio: Bike Only Demonstration
- Old Man
*/
//
//Display
fullScreen(); //Landscape
//size(1200, 800); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//println("Display VARS", "appWidth:"+appWidth, "appHeight:"+appHeight, "\n\t\t\t\t\t\t\tFullScreen,", "\ndisplayWidth:"+displayWidth, "displayHeight:"+displayHeight, "width:"+width, "height:"+height);
//
//Population
float imageX = appWidth * 1/4 ;
float imageY = appHeight * 1/10 ;
float imageWidth = appWidth * 1/2 ;
float imageHeight = appHeight * 4/5 ;
//
//Image Aspect Ratio Vars & Algorithm
//Directory or Pathway, Concatenation
String upArrow = "../../";
String folder = "Images/" ;
String sky = "sky" ;
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow + folder + sky + fileExtensionJPG;
//println("Sky Pathway:", imagePathway1);
//Image Loading & Aspect Ratio
PImage image1 = loadImage( imagePathway1 );
int imageWidth1 = 1200; //Hardcoded
int imageHeight1 = 800; //Hardcoded
//Aspect Ratio
float image1AspectRatio_GreaterOne = (imageWidth1 >= imageHeight1 ) ? imageWidth1/imageHeight1: imageHeight1/imageWidth1; //Ternary Operator
//Hardcoded Greater-Than-One Aspect Ratio
println(image1AspectRatio_GreaterOne) ;
//DIV
rect( imageX, imageY, imageWidth, imageHeight );
//
image( image1, imageX, imageY, imageWidth1, imageHeight1);
