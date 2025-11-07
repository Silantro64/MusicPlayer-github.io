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
float playY2 = imageY + imageHeight * 1/2 ;
float playX3 = imageX + imageWidth * 1/4 ;
float playY3 = imageY + imageHeight * 3/4 ;
float progressX = appWidth * 5.5/16 ;
float progressY = appHeight * 5.5/11.6 ;
float progressWidth = appWidth * 4.2/16 ;
float progressHeight = appHeight * 0.8/11.6 ;
//
rect(imageX, imageY, imageWidth, imageHeight);
//
triangle(playX1, playY1, playX2, playY2, playX3, playY3);
//
rect(progressX, progressY, progressWidth, progressHeight); 
