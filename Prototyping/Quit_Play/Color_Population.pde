void colorPopulation() {
  nightModeVariables();
  buildingColors();
} //end color population
//
void nightModeVariables() {
  if (nightMode==false) {
    nightMode=true;
  } else {
    nightMode=false;
  }
} //end night mode variables
//
void buildingColors () {
  color black = 0; // Gray Scale, much smaller color, 256 bits
  color white = 255; // Gray Scale
  color grayScale = 255/2;
  color gray = #CECECE;
  //Canvas:  default background and ink
  resetBackground = white;
  resetInk = black;
  resetBackgroundNight = 256/4;
  resetInkNight = int(256*0.75);
  //Button Colors
  color red = #CB2525;
  color blue = #4BB2FF;
  color yellow = #FFE043;
  color darkGray = grayScale;
  color lightGray = gray;

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
    playColorBackground = yellow;
    playColorSymbol = blue;
    playColorBackgroundActivated = blue;
    playColorSymbolActivated = yellow;
    quitBackground = white;
    quitBackgroundActivated = red;
    quitButtonInk = black;
  }
} //end building colors
