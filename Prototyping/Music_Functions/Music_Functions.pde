//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
//All Global Variables execute first ... A Global Variable is a Global Variable
int appWidth, appHeight;
float quitX, quitY, quitWidth, quitHeight;
float playX, playY, playWidth, playHeight;
float playX1, playY1, playX2, playY2, playX3, playY3;
//
Boolean playButton=false, quitButton=false;
//
color resetBackground, resetInk, resetBackgroundDay, resetInkDay, resetBackgroundNight, resetInkNight;
color quitButtonInk;
color playColorBackground, playColorSymbol, playColorBackgroundActivated, playColorSymbolActivated;
color quitBackground, quitBackgroundActivated;
Boolean nightMode=false;
/*
void settings() {
 println(displayWidth, displayHeight);
 int shorterSide = ( displayWidth > displayHeight ) ? displayHeight : displayWidth ; //Ternary Operator
 shorterSide *= 0.9; //90%, WINDOW Frame
 size(shorterSide, shorterSide); //ERROR IllegalStateException: cannot use a var in size()
 println("Display Questions", displayWidth, displayHeight, shorterSide);
 println("CANVAS Size Key Variables for setup()", width, height);
 } //End settings
 */
void setup() {
  //Display CANVAS
  size(1200, 800); //width //height
  //fullScreen(); //displayWidth //displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  divPopulation();
  DIVs();
  musicButtonShapes();
  nightMode = false; //initialization in setup() only
  colorPopulation();
  musicSetup();
  textSetup();
  //
} //End setup
//
void draw() {
  //println("my mouse is", mouseX, mouseY);
  //println(playButton);
  hoverOver_draw(); //See Buttons
} //End draw
//
void mousePressed() {
  if (mouseX>quitX && mouseY<quitY+quitWidth && mouseX>quitX && mouseY<quitY+quitHeight) {
    quitButton();
  }
} //End Mouse Pressed
//
void keyPressed() {
  if (key == 'Q' || key == 'q') { // Removed semicolon
    quitButton();
  }
  if (key == 'D' || key == 'd') { // Removed semicolon
    colorPopulation();
  }
  //night mode
  /* Key Board Short Cuts ... learning what the Music Buttons could be
   Note: CAP Lock with ||
   if ( key==? || key==? ) ; //'' only
   -
   if ( key==CODED || keyCode==SpecialKey ) ; //Special Keys abriviated CAPS
   -
   All Music Player Features are built out of these Minim AudioPlayer() functions
   .isPlaying()
   .isMuted()
   .loop(0), parameter is number of iterations after play
   .loop(), parameter is infinite interations
   .play(), parameter is built-in skip (milli-seconds or crystal-time)
   .pause()
   .rewind()
   .skip()
   .unmute()
   .mute()
   -
   Lesson Music Button Features based on single, double, and spamming taps
   - Play
   - Pause
   - Stop
   - Loop Once
   - Loop Infinite
   - Fast Forward
   - Fast Rewind
   - Mute
   - Next Song
   - Previous Song
   - Shuffle
   -
   - Advanced Buttons & Combinations
   - Play-Pause-Stop
   - Auto Play
   - Random Song
   */
  //if ( key=='P' || key=='p' ) playlist[currentSong].play(); //Simple Play, no double tap possible
  //
  if ( key=='P' || key=='p' ) playlist[currentSong].loop(0); { //Simple Play, double tap possible
  /* Note: double tap is automatic rewind, no pause
   Symbol is two triangles
   This changes what the button might become after it is pressed
   */
  if ( key=='O' || key=='o' ) // Pause
    //
    if ( playlist[currentSong].isPlaying() ) {
      playlist[currentSong].pause();
    } else {
      playlist[currentSong].play();
    }
  }
  //if ( key=='S' || key=='s' ) song[currentSong].pause(); //Simple Stop, no double taps
  //
  if ( key=='S' | key=='s' ) {
    if ( playlist[currentSong].isPlaying() ) {
      playlist[currentSong].pause(); //single tap
    } else {
      playlist[currentSong].rewind(); //double tap
    }
  }
  if ( key=='L' || key=='l' ) playlist[currentSong].loop(1); // Loop ONCE: Plays, then plays again, then stops & rewinds
  if ( key=='K' || key=='k' ) playlist[currentSong].loop(); // Loop Infinitely //Parameter: BLANK or -1
  if ( key=='F' || key=='f' ) playlist[currentSong].skip( 10000 ); // Fast Forward, Rewind, & Play Again //Parameter: milliseconds
  if ( key=='R' || key=='r' ) playlist[currentSong].skip( -10000 ); // Fast Reverse & Play //Parameter: negative numbers
  if ( key=='W' || key=='w' ) { // MUTE
    //
    //MUTE Behaviour: stops electricty to speakers, does not stop file
    //NOTE: MUTE has NO built-in PUASE button, NO built-in rewind button
    //ERROR: if song near end of file, user will not know song is at the end
    //Known ERROR: once song plays, MUTE acts like it doesn't work
    if ( playlist[currentSong].isMuted() ) {
      //ERROR: song might not be playing
      //CATCH: ask .isPlaying() or !.isPlaying()
      playlist[currentSong].unmute();
    } else {
      //Possible ERROR: Might rewind the song
      playlist[currentSong].mute();
    }
  }
  if ( key==CODED || keyCode==ESC ) exit(); // QUIT //UP
  if ( key=='Q' || key=='q' ) exit(); // QUIT
  //
  if ( key=='N' || key=='n' ) { // NEXT //See .txt for starter hint
    if ( playlist[currentSong].isPlaying() ) {
      playlist[currentSong].pause();
      playlist[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      playlist[currentSong].play();
    } else {
      //
      playlist[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      // NEXT will not automatically play the song
      //song[currentSong].play();
    }
  }
  //if ( key=='B' || key=='b' ) ; // Previous, Back //Students to finish
  //
  if ( key=='Y' || key=='y' ) currentSong = int(random(numberOfSongs)); //random(0, numberOfSongs)
  //
  //if ( key=='S' || key=='s' ) ; // Shuffle - PLAY (Random)
  //Note: will randomize the currentSong number
  //Caution: random() is used very often
  //Question: how does truncating decimals affect returning random() floats
  /*
  if ( key=='' || key=='' ) ; // Play-Pause-STOP //Advanced, beyond single buttons
   - need to have basic GUI complete first
   */
  //

  //
  //End MAIN Program
}
 //End Key Pressed
//
//
//End MAIN Program
