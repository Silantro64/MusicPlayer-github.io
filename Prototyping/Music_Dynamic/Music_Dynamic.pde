  /* Hearing Music and Sound Effects
 - Reading Code with CTRL-T and Braces
 */
/* Program Documentation & Notes
 - Libraries add specific functions to ease programming burdon
 - Must add some libraries in the IDE and the code, like Minim
 - Global Varaibles on harddrive used throuhgout the program sections
 
 - Folder Name matches first-tab or MAIN Program
 - setup() executes once, sets up all libraries & variables (and objects at the advanced level)
 - draw() maniuplates variables and how CANVAS looks
 - mousePressed() and keyPressed() are example listeners, interrupts draw(), then continues draw() at that line
 
 - Once setup() is done, draw() starts looping
 - Can temporarily pause draw() with noLoop() & loop() to wait (behind booleans or interactions)
 - Note: delay() will stop the program for a specified time
 */
//
//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; // Initiates entire class
int numberOfSongs = 1; //Best practice
int numberOfSoundEffects = 1; //Best practice
AudioPlayer[] playlist = new AudioPlayer[numberOfSongs];
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //ZERO
//
void setup() {
  //Display
  size(700, 500); //width //height
  //fullScreen(); //displayWidth //displayHeight
  int appWidth = width; //Best Practice
  int appHeight = height;
  //
  //Music Loading - STRUCTURED Review
  minim = new Minim(this); //Manditory
  String upArrow = "../../";
  String musicFolder = "Music/";
  String songName1 = "Eureka";
  String soundEffect1 = "The_Simplest_Sting";
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = upArrow + musicFolder ; //Concatenation
  String file = musicDirectory + songName1 + fileExtension_mp3; //TO BE Rewritten and deleted once file is LOADED
  playlist[currentSong] = minim.loadFile(file); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  file =  musicDirectory + soundEffect1 + fileExtension_mp3; //Rewritting FILE
  soundEffects[currentSong] = minim.loadFile(file); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  //ERROR Check Music and Sound Effect Variables
  //Thrown by commenting out FILE, playList[] or soundEffects[]
  //See FILE or minim.loadFile
 // println("The Play List or Sound Effects did not load properly");
  printArray(playlist);
  printArray(soundEffects);
} //End setup
//
void draw() {
  soundEffects[currentSong].play();
} //End draw
//
void mousePressed () {
} //End Mouse Pressed
//
void keyPressed () {
} //End Key Pressed
//
//End MAIN Program
