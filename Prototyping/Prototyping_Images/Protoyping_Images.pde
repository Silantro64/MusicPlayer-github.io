/* Aspect Ratio: Bike Only Demonstration
- Old Man
*/
//
//Display
//fullScreen(); //Landscape
size(1200, 800); //Portrait
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
//println("Bike Pathway:", imagePathway1);
//Image Loading & Aspect Ratio
//
//Possible ERROR: NullPointerException on the Image
PImage errorImage = loadImage( "download.png" );
PImage image1 = loadImage( imagePathway1 );
if ( image1 == null ) {
  println("NullPointerException on Image ... Spelling Mistake with Pathway Concatenation");
  image1 = errorImage;
  exit(); //handled whenever the computer uses this part or Memory
}
int imageWidth1 = 1200; //Hardcoded
int imageHeight1 = 800; //Hardcoded
//Aspect Ratio
float image1AspectRatio_GreaterOne = (imageWidth1 >= imageHeight1 ) ? float(imageWidth1)/float(imageHeight1): float(imageHeight1)/float(imageWidth1); //Ternary Operator
//Hardcoded Greater-Than-One Aspect Ratio
//How to make image bigger or smaller
//ERROR: truncating, casting
//println("Aspect Ratio >1" ,image1AspectRatio_GreaterOne, "Testing for Decimals, formula", imageWidth1/imageHeight1 ) ;
//Algorithm Decisions (choice)
//Aspect Ratio
//
//println("Testing for Decimals, formula unsing ints:", imageWidth1/imageHeight1);
//println("After casting added, Aspect Ratio >1:", image1AspectRatio_GreaterOne);

//Algorithm Decisions (choice)
float imageWidthAdjusted = imageWidth ;
float imageHeightAdjusted = (imageWidth1 >= imageWidth) ? imageWidthAdjusted/image1AspectRatio_GreaterOne : imageWidthAdjusted*image1AspectRatio_GreaterOne ; //Ternary Operator
//Verification: looks good
if ( imageHeightAdjusted > imageHeight ) {
  println("Image doesn't fit, program ended ... Fatal Flaw, must be solved ... Image doesn't show.");
  exit();
  int indexWhile = 1200; //Local Variable to IF-Statement
  //** WHILE Loops can run infinitely with an error if not controlled
  while ( imageHeightAdjusted>imageHeight ) {
    println("Iteration of Percent WHILE Loop", indexWhile++); //prints value, then adds one, order is important in AP
    if ( indexWhile < 10000 ) {
      //Checking Image Size
    } else {
      //ERROR: Infinite Loop
      println("ERROR: infinite loop, Image Percent WHILE, value:", indexWhile);
      exit(); //doesn't work, must force WHILE stop
      imageHeightAdjusted=imageHeight ; //makes WHILE false, stops WHILE
    } //End Check Infinite loop
    //Image Adjustment Percent v Pixel
    imageWidthAdjusted *= 0.99;
    imageHeightAdjusted = imageWidthAdjusted/image1AspectRatio_GreaterOne;
    println("Inspection of percent decrase:", imageWidthAdjusted, imageHeightAdjusted, imageHeight);
  } //End WHILE
  //
} //END IF
//
//DIV
rect(imageX, imageY, imageWidth, imageHeight);
//
image(image1, imageX, imageY, imageWidthAdjusted, imageHeightAdjusted);
//
//image(image1, imageX, imageY, imageWidth1, imageHeight1);
