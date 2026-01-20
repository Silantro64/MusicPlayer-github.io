//Global Variables
Minim minim; // Initiates entire class
int numberOfSongs = 3; //Best practice
int numberOfSoundEffects = 1; //Best practice
AudioPlayer[] playlist = new AudioPlayer[numberOfSongs];
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //ZERO
//Music Loading - STRUCTURED Review
minim = new Minim(this); 
String upArrow = "../../";
String musicFolder = "Music/";

String [] songName = new String[numberOfSongs];
songName[0] = "Eureka" ;
songName[1] = "Tratak" ;
songName[2] = "Waterfall";
//
String soundEffect1 = "The_Simplest_Sting" ;
String fileExtension_mp3 = ".mp3";
//
String musicDirectory = upArrow + musicFolder; //Concatenation
String file;
//
for (int i=0;i<numberOfSongs;i++) {
  file = musicDirectory + songName[i] + fileExtension_mp3;
  playList[currentSong] = minim.loadFile(file);
  currentSong++;
} //End file loading
currentSong = 0;
file = musicDirectory + soundEffect1 + fileExtension_mp3;
soundEffects[currentSong] = minim.loadFile(file);
//println("Music Pathway", musicDirectory);
//println("Full Music Pathway", file);
