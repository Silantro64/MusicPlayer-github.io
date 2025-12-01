/* 2D Shapes
*/
//
fullScreen(); //displayWidth //displayHeight
println(displayWidth, displayHeight);
int appWidth = displayWidth;
int appHeight= displayHeight;
//
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
float playX1 = button5X + buttonWidth * 1/4 ;
float playY1 = buttonY + buttonHeight * 1/4 ;
float playX2 = button5X + buttonWidth *  3/4 ;
float playY2 = buttonY + buttonHeight * 1/2 ;
float playX3 = button5X + buttonWidth * 1/4 ;
float playY3 = buttonY + buttonHeight * 3/4 ;
float stopX = buttonX + buttonWidth  * 1/4 ;
float stopY = buttonY + buttonHeight * 1/4 ;
float stopDimension = buttonY * 1/16 ;
float fastX1 = button6X + buttonWidth * 1/4 ;
float fastY1 = buttonY + buttonHeight * 1/4 ;
float fastX2 = button6X + buttonWidth * 2/4 ;
float fastY2 = buttonY + buttonHeight * 1/2 ;
float fastX3 = button6X + buttonWidth * 1/4 ;
float fastY3 = buttonY + buttonHeight * 3/4 ;
float fasterX1 = button6X + buttonWidth * 1/2 ;
float fasterX2 = button6X + buttonWidth * 3/4 ;
float fasterX3 = button6X + buttonWidth * 1/2 ;
float pauseX = button4X + buttonWidth * 1/5 ;
float pauseY = buttonY + buttonHeight * 1/4 ;
float pauseWidth = button4X * 0.3/16 ;
float pauseHeight = buttonY * 1/16 ;
float pausedX = button4X + buttonWidth * 1.15/2; 
float skipX1 = button7X + buttonWidth * 1/4 ;
float skipY1 = buttonY + buttonHeight * 1/4 ;
float skipX2 = button7X + buttonWidth * 2/4 ;
float skipY2 = buttonY + buttonHeight * 1/2 ;
float skipX3 = button7X + buttonWidth * 1/4 ;
float skipY3 = buttonY + buttonHeight * 3/4 ;
float skipY = buttonY + buttonHeight * 1/4 ;
float skipWidth = button7X * 0.2/16 ;
float skipHeight = buttonY * 1/16 ;
float skipX = button7X + buttonWidth * 1/2; 
float muteX = button3X + buttonWidth  * 1/4 ;
float muteY = buttonY + buttonHeight * 1/4 ;
float muteDimension = buttonY * 1/16 ;
float muteX1 = button3X + buttonWidth * 1/4 ;
float muteY1 = buttonY + buttonHeight * 1/4 ;
float muteX2 = button3X + buttonWidth * 2.7/4 ;
float muteY2 = buttonY + buttonHeight * 1/4 ;
float muteX3 = button3X + buttonWidth * 1/4 ;
float muteY3 = buttonY + buttonHeight * 3/4 ;
float backX1 = button2X + buttonWidth * 1.8/4 ;
float backY1 = buttonY + buttonHeight * 1/4 ;
float backX2 = button2X + buttonWidth * 0.8/4 ;
float backY2 = buttonY + buttonHeight * 1/2 ;
float backX3 = button2X + buttonWidth * 1.8/4 ;
float backY3 = buttonY + buttonHeight * 3/4 ;
float backedX1 = button2X + buttonWidth * 2.8/4 ;
float backedX2 = button2X + buttonWidth * 1.8/4 ;
float backedX3 = button2X + buttonWidth * 2.8/4 ;
//
rect(buttonX, buttonY, buttonWidth, buttonHeight);
//
rect(button2X, buttonY, buttonWidth, buttonHeight) ;
//
square(stopX, stopY, stopDimension) ;
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
