/* Library Notes
 - File / Sketch / Import Library / Manage Libraries
 - We use Minim for Sound and Sound Effects
 - Able to Google-search libraries to make your project easier
 - Documentation: https://code.compartmental.net/minim/
 - Specific Class: https://code.compartmental.net/minim/audioplayer_class_audioplayer.html
 - Specific Class: https://code.compartmental.net/minim/audiometadata_class_audiometadata.html
 
 ** You are now able to research any Processing-Java Library ... or Any Java Library from the internet **
 - Processing-Java Libraries must be installed into the IDE
 - Java Libraries simply require the 'import' declaration
 */
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
//Display
size(700, 500); //width //height
//fullscreen (); //displayWidth //displayHeight
int appWidth = width;
int appHeight = height;
//
//Music Loading - STRUCTURED Review
minim = new Minim(this);
String upArrow = "../../";
String musicFolder = "Music/";
String songName1 = "Eureka" ;
String soundEffect1 = "The_Simplest_Sting" ;
String fileExtension_mp3 = ".mp3";
//
String musicDirectory = upArrow + musicFolder; //Concatenation
String file = musicDirectory + songName1 + fileExtension_mp3 ;
println("Music Pathway", musicDirectory);
println("Full Music Pathway", file);
file = musicDirectory + soundEffect1 + fileExtension_mp3;
//
playlist[currentSong] = minim.loadFile(file); //ERROR: Verify Spelling & Library Installed, Sketch / Import Library
soundEffects[currentSong] = minim.loadFile(file);
//
printArray("they did it");
printArray(playlist);
printArray(soundEffects);
