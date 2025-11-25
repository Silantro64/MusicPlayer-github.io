/* 2D Shapes
*/
//
fullScreen(); //displayWidth //displayHeight
println(displayWidth, displayHeight);
int appWidth = displayWidth;
int appHeight= displayHeight;
//
float imageX = appWidth * 5/16 ;
float imageY = appHeight * 6.3/11.6 ;
float imageWidth = appWidth * 0.8/16 ;
float imageHeight = appHeight * 0.8/11.6 ;
float image2X = appWidth * 5.75/16 ;
float image3X = appWidth * 6.5/16 ;
float image4X = appWidth * 7.25/16 ;
float image5X = appWidth * 1/2 ;
float image6X = appWidth * 8.75/16 ;
float image7X = appWidth * 9.5/16 ;
float playX1 = image5X + imageWidth * 1/4 ;
float playY1 = imageY + imageHeight * 1/4 ;
float playX2 = image5X + imageWidth *  3/4 ;
float playY2 = imageY + imageHeight * 1/2 ;
float playX3 = image5X + imageWidth * 1/4 ;
float playY3 = imageY + imageHeight * 3/4 ;
float stopX = imageX + imageWidth  * 1/4 ;
float stopY = imageY + imageHeight * 1/4 ;
float stopDimension = imageY * 1/16 ;
float fastX1 = image6X + imageWidth * 1/4 ;
float fastY1 = imageY + imageHeight * 1/4 ;
float fastX2 = image6X + imageWidth * 2/4 ;
float fastY2 = imageY + imageHeight * 1/2 ;
float fastX3 = image6X + imageWidth * 1/4 ;
float fastY3 = imageY + imageHeight * 3/4 ;
float fasterX1 = image6X + imageWidth * 1/2 ;
float fasterX2 = image6X + imageWidth * 3/4 ;
float fasterX3 = image6X + imageWidth * 1/2 ;
float pauseX = image4X + imageWidth * 1/5 ;
float pauseY = imageY + imageHeight * 1/4 ;
float pauseWidth = image4X * 0.3/16 ;
float pauseHeight = imageY * 1/16 ;
float pausedX = image4X + imageWidth * 1.15/2; 
float skipX1 = image7X + imageWidth * 1/4 ;
float skipY1 = imageY + imageHeight * 1/4 ;
float skipX2 = image7X + imageWidth * 2/4 ;
float skipY2 = imageY + imageHeight * 1/2 ;
float skipX3 = image7X + imageWidth * 1/4 ;
float skipY3 = imageY + imageHeight * 3/4 ;
float skipY = imageY + imageHeight * 1/4 ;
float skipWidth = image7X * 0.2/16 ;
float skipHeight = imageY * 1/16 ;
float skipX = image7X + imageWidth * 1/2; 
float muteX = image2X + imageWidth  * 1/4 ;
float muteY = imageY + imageHeight * 1/4 ;
float muteDimension = imageY * 1/16 ;
float muteX1 = image2X + imageWidth * 1/4 ;
float muteY1 = imageY + imageHeight * 1/4 ;
float muteX2 = image2X + imageWidth * 2.7/4 ;
float muteY2 = imageY + imageHeight * 1/4 ;
float muteX3 = image2X + imageWidth * 1/4 ;
float muteY3 = imageY + imageHeight * 3/4 ;
float backX1 = image3X + imageWidth * 1.8/4 ;
float backY1 = imageY + imageHeight * 1/4 ;
float backX2 = image3X + imageWidth * 0.8/4 ;
float backY2 = imageY + imageHeight * 1/2 ;
float backX3 = image3X + imageWidth * 1.8/4 ;
float backY3 = imageY + imageHeight * 3/4 ;
float backedX1 = image3X + imageWidth * 2.8/4 ;
float backedX2 = image3X + imageWidth * 1.8/4 ;
float backedX3 = image3X + imageWidth * 2.8/4 ;
//
rect(imageX, imageY, imageWidth, imageHeight);
//
rect(image2X, imageY, imageWidth, imageHeight) ;
//
square(stopX, stopY, stopDimension) ;
//
rect(image3X, imageY, imageWidth, imageHeight) ;
//
rect(image4X, imageY, imageWidth, imageHeight) ;
//
rect(image5X, imageY, imageWidth, imageHeight) ;
//
rect(image6X, imageY, imageWidth, imageHeight) ;
//
rect(image7X, imageY, imageWidth, imageHeight) ;
//
triangle(playX1, playY1, playX2, playY2, playX3, playY3);
//
triangle(fastX1, fastY1, fastX2, fastY2, fastX3, fastY3) ;
//
triangle(fasterX1, fastY1, fasterX2, fastY2, fasterX3, fastY3) ;
//
rect(pauseX, pauseY, pauseWidth, pauseHeight) ;
//
rect(pausedX, pauseY, pauseWidth, pauseHeight) ;
//
triangle(skipX1, skipY1, skipX2, skipY2, skipX3, skipY3) ;
//
rect(skipX, skipY, skipWidth, skipHeight) ;
//
square(muteX, muteY, muteDimension);
//
triangle(muteX1, muteY1, muteX2, muteY2, muteX3, muteY3); 
//
triangle(backX1, backY1, backX2, backY2, backX3, backY3);
//
triangle(backedX1, backY1, backedX2, backY2, backedX3, backY3); 
