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
String songName1 = "Eureka" ;
String songName2 = "Tratak" ;
String songName3 = "Waterfall";
String soundEffect1 = "The_Simplest_Sting" ;
String fileExtension_mp3 = ".mp3";
//
String musicDirectory = upArrow + musicFolder; //Concatenation
String file = musicDirectory + songName1 + fileExtension_mp3 ;
println("Music Pathway", musicDirectory);
println("Full Music Pathway", file);
file = musicDirectory + soundEffect1 + fileExtension_mp3;
