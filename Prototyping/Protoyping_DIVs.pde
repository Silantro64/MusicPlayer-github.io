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
float progressX = appWidth * 5.59/16 ;
float progressY = appHeight * 5.5/11.6 ;
float progressWidth = appWidth * 4.2/16 ;
float progressHeight = appHeight * 0.8/16 ;
float songX = appWidth * 0.7/16 ;
float songY = appHeight * 9.5/11.6 ;
float songWidth = appWidth * 2/16 ;
float songHeight = appHeight * 2/11.6 ;
float song2X = appWidth * 3.4/16 ;
float buttonX = appWidth * 5/16 ;
float buttonY = appHeight * 6.3/11.6 ;
float buttonWidth = appWidth * 0.8/16 ;
float buttonHeight = appHeight * 0.8/11.6 ;
float button2X = appWidth * 5.75/16 ;
float button3X = appWidth * 6.5/16 ;
float button4X = appWidth * 7.25/16 ;
float button5X = appWidth * 1/2 ;
float button6X = appWidth * 8.75/16 ;
float button7X = appWidth * 9.5/16 ;
//
rect(imageX, imageY, imageWidth, imageHeight);
//
//triangle(playX1, playY1, playX2, playY2, playX3, playY3);
//
rect(progressX, progressY, progressWidth, progressHeight); 
//
rect(songX, songY, songWidth, songHeight) ;
//
rect(song2X, songY, songWidth, songHeight) ;
//
rect(buttonX, buttonY, buttonWidth, buttonHeight) ;
//
rect(button2X, buttonY, buttonWidth, buttonHeight) ;
//
rect(button3X, buttonY, buttonWidth, buttonHeight) ;
//
rect(button4X, buttonY, buttonWidth, buttonHeight) ;
//
rect(button5X, buttonY, buttonWidth, buttonHeight) ;
//
rect(button6X, buttonY, buttonWidth, buttonHeight) ;
//
rect(button7X, buttonY, buttonWidth, buttonHeight) ;
