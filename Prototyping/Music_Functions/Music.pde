//Global Variables
Minim minim; // Initiates entire class
int numberOfSongs = 3; //Best practice
int numberOfSoundEffects = 1; //Best practice
AudioPlayer[] playlist = new AudioPlayer[numberOfSongs];
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //ZERO
//
void musicSetup() {
  //Display
  size(700, 500); //width //height
  //fullScreen(); //displayWidth //displayHeight
  int appWidth = width; //Best Practice
  int appHeight = height;
  //
  //Music Loading - STRUCTURED Review
  minim = new Minim(this); //Manditory
  String upArrow = "../../../";
  String musicFolder = "Music/";

  String [] songName = new String[numberOfSongs];
  songName[0] = "Eureka" ;
  songName[1] = "Tratak" ;
  songName[2] = "Waterfall";
  //
  String soundEffect1 = "The_Simplest_Sting";
  String fileExtension_mp3 = ".mp3";
  String musicDirectory = upArrow + musicFolder ; //Concatenation
  String file;//TO BE Rewritten and deleted once file is LOADED
  //
  for ( int i=0; i<numberOfSongs; i++ ) {
    file = musicDirectory + songName[i] + fileExtension_mp3;
    playlist[currentSong] = minim.loadFile(file); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
    currentSong++;
  } //end file loading
  currentSong=0;
  file = musicDirectory + soundEffect1 + fileExtension_mp3; //Rewritting FILE
  soundEffects[currentSong] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  for ( int i=0; i<numberOfSongs; i++ ) {
    //ERROR Check Music and Sound Effect Variables
    //Thrown by commenting out FILE, playlist[] or soundEffects[]
    if ( playlist[i]==null || soundEffects[currentSong]==null) { //ERROR, play list is NULL
      //See FILE or minim.loadFile
      println("The Play List or Sound Effects did not load properly");
      printArray(playlist);
      printArray(soundEffects);
    }//end subprogram music
