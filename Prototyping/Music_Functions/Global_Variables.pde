//
//Global Variables
//All Global Variables execute first ... A Global Variable is a Global Variable
int appWidth, appHeight;
float quitX, quitY, quitWidth, quitHeight;
float playX, playY, playWidth, playHeight;
float playX1, playY1, playX2, playY2, playX3, playY3;
float stringImageX, stringImageY, stringImageWidth, stringImageHeight;
//
Boolean playButton=false, quitButton=false;
//
color resetBackground, resetInk, resetBackgroundDay, resetInkDay, resetBackgroundNight, resetInkNight;
color quitButtonInk;
color playColorBackground, playColorSymbol, playColorBackgroundActivated, playColorSymbolActivated;
color quitBackground, quitBackgroundActivated;
color resetBlackink, resetWhiteInk, greenInk;
Boolean nightMode=false;
//
Minim minim; // Initiates entire class
int numberOfSongs = 3; //Best practice
int numberOfSoundEffects = 1; //Best practice
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //ZERO
//
AudioMetaData[] playListMetaData = new AudioMetaData[numberOfSongs];
//
float fontSize;
PFont titleFont;
String songTitle;
