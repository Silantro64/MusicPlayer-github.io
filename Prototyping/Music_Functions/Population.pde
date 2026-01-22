/* population
 - DIVPopulation
 - colorPopulation(), Color Population
 - TBA
 */
 float stringImageX, stringImageY, stringImageWidth, stringImageHeight;
//
void DIVPopulation() {
  quitX = appWidth * 5.75/10;
  quitY = appHeight * 0/10;
  quitWidth = appWidth * 0.8/16;
  quitHeight = appHeight * 0.8/11.6;
  playX = appWidth * 5/16;
  playY = appHeight * 6.3/11.6;
  playWidth = appWidth * 0.8/16;
  playHeight = appHeight * 0.8/11.6;
  playX1 = playX + playWidth * 1/4;
  playY1 = playY + playHeight * 1/4;
  playX2 = playX1 + playWidth * 1/2;
  playY2 = playY + playHeight * 1/2;
  playX3 = playX1;
  playY3 = playY + playHeight * 3/4;
  //
  stringImageX = appWidth*0.5/2;
  stringImageY = appHeight*0.5/5;
  stringImageWidth = appWidth*0.5/1;
  stringImageHeight = appHeight*0.5/5;
}//End DIV population
//
void colorPopulation() {
  color black = 0; // Gray Scale, much smaller color, 256 bits
  color white = 255; // Gray Scale
  color grayScale = 255/2;
  color gray = #CECECE;
  //Canvas:  default background and ink
  resetBackgroundDay = white;
  resetInk = black;
  resetBackgroundNight = 256/4;
  resetInkNight = int(256*0.75);
  //Button Colors
  color red = #CB2525;
  color blue = #4BB2FF;
  color yellow = #FFE043;
  color darkGray = grayScale;
  color lightGray = gray;
  //
  if ( nightMode == true ) {
    resetBackground = resetBackgroundNight;
    resetInk = resetInkNight;
    playColorBackground = darkGray;
    playColorSymbol = lightGray;
    playColorBackgroundActivated = lightGray;
    playColorSymbolActivated = darkGray;
    quitBackground = lightGray;
    quitBackgroundActivated = red;
    quitButtonInk = darkGray;
  } else {
    resetBackground = resetBackgroundDay;
    resetInk = black;
    playColorBackground = yellow;
    playColorSymbol = blue;
    playColorBackgroundActivated = blue;
    playColorSymbolActivated = yellow;
    quitBackground = white;
    quitBackgroundActivated = red;
    quitButtonInk = black;
  }
}//End Color Population
//
//End Subprogram Population
