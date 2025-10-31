/* DIVs: 2D Rectangles
*/
//
fullScreen(); //displayWidth //displayHeight
println(displayWidth, displayHeight);
int appWidth = displayWidth;
int appHeight= displayHeight;
//
float imageX = appWidth * 5.7/16 ;
float imageY = appHeight * 1.6/11.6 ;
float imageWidth = appWidth * 1/4 ;
float imageHeight = appHeight * 3.1/11.6 ;
float playX1 = imageX + imageWidth * 1/4 ;
float playY1 = imageY + imageHeight * 1/4 ;
float playX2 = imageX + imageWidth *  3/4 ;
float playY2 = appHeight * 1/2 ;
float playX3 = appWidth * 1/4 ;
float playY3 = appHeight * 3/4 ;
//
rect(imageX, imageY, imageWidth, imageHeight);
//
triangle(playX1, playY1, playX2, playY2, playX3, playY3);
