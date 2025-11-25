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
float imageX = appWidth * .8/4 ;
float imageY = appHeight * 1.1/10 ;
float imageWidth = appWidth * 1/2 ;
float imageHeight = appHeight * 3/5 ; // Make smaller to test landscape
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
PImage image1 = loadImage(imagePathway1);
int imageWidth1 = 1200; //Hardcoded
int imageHeight1 = 800; //Hardcoded
//Aspect Ratio
float image1AspectRatio_GreaterOne = (imageWidth1 >= imageHeight1 ) ? float(imageWidth1)/float(imageHeight1): float(imageHeight1)/float(imageWidth1); //Ternary Operator
//Hardcoded Greater-Than-One Aspect Ratio
//How to make image bigger or smaller
//ERROR: truncating, casting
println("Aspect Ratio >1" ,image1AspectRatio_GreaterOne, "Testing for Decimals, formula", imageWidth1/imageHeight1 ) ;
//Algorithm Decisions (choice)
//Aspect Ratio
/*

if () {} else{} //End IF Aspect Ratio
//DIV
rect(imageX, imageY, imageWidth, imageHeight);
//
image(image1, imageX, imageY, imageWidth1, imageHeight1);
