/* 2D Shapes
*/
//
fullScreen(); //displayWidth //displayHeight
println(displayWidth, displayHeight);
int appWidth = displayWidth;
int appHeight= displayHeight;
//
float imageX = appWidth * 5.7/16 ;
float imageY = appHeight * 1.6/11.6 ;
float imageWidth = appWidth * 0.8/16 ;
float imageHeight = appHeight * 0.8/11.6 ;
float imagesX = appWidth * 6.45/16 ;
float playX1 = imageX + imageWidth * 1/4 ;
float playY1 = imageY + imageHeight * 1/4 ;
float playX2 = imageX + imageWidth *  3/4 ;
float playY2 = imageY + imageHeight * 1/2 ;
float playX3 = imageX + imageWidth * 1/4 ;
float playY3 = imageY + imageHeight * 3/4 ;
float stopX = imagesX + imageWidth * 2/4 ;
float stopY = imageY + imageHeight  * 2/4 ;
float stopDimension = imagesX + imageWidth * 1/4 ;
//
rect(imageX, imageY, imageWidth, imageHeight);
//
triangle(playX1, playY1, playX2, playY2, playX3, playY3);
//
rect(imagesX, imageY, imageWidth, imageHeight) ;
//
square(stopX, stopY, stopDimension) ;
