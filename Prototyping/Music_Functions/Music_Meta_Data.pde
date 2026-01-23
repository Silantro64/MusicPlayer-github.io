/* Text - Dynamic Strings and MetaData
 What is available from Minim Documentation, 20250421
 - https://code.compartmental.net/minim/audiometadata_class_audiometadata.html
 File Name: meta.fileName()
 Length (in milliseconds): meta.length()
 Title: meta.title()
 Author: meta.author()
 Album: meta.album()
 Date: meta.date()
 Comment: meta.comment()
 Lyrics: meta.lyrics()
 Track: meta.track()
 Genre: meta.genre()
 Copyright: eta.copyright()
 Disc: meta.disc()
 Composer: meta.composer()
 Orchestra: meta.orchestra()
 Publisher: meta.publisher()
 Encoded: meta.encoded()
 */
void metaDataFileLoading() {
  AudioMetaData[] playListMetaData = new AudioMetaData[numberOfSongs];
}
//
void testMetaData() {
  //print what is available on a particular song
  //see image / properties / details
  println();
  println("File Name: " + playListMetaData[currentSong].fileName() );
  println("Length (in milliseconds): " + playListMetaData[currentSong].length() );
  println("Title: " + playListMetaData[currentSong].title() );
  println("Author: " + playListMetaData[currentSong].author() );
  println("Album: " + playListMetaData[currentSong].album() );
  println("Date: " + playListMetaData[currentSong].date() );
  println("Comment: " + playListMetaData[currentSong].comment() );
  println("Lyrics: " + playListMetaData[currentSong].lyrics() );
  println("Track: " + playListMetaData[currentSong].track() );
  println("Genre: " + playListMetaData[currentSong].genre() );
  println("Copyright: " + playListMetaData[currentSong].copyright() );
  println("Disc: " + playListMetaData[currentSong].disc() );
  println("Composer: " + playListMetaData[currentSong].composer() );
  println("Orchestra: " + playListMetaData[currentSong].orchestra() );
  println("Publisher: " + playListMetaData[currentSong].publisher() );
  println("Encoded: " + playListMetaData[currentSong].encoded() );
}
//
void saveSongTitle() {
  //See draw()
  //Note: See Music Loading if NULL
  if (playList[currentSong].isPlaying() == true) {
    //titleDIV();
    songTitle = playListMetaData[currentSong].title(); //Used to switch titles in draw()
    //println("Check VAR currentSongFileName", currentSongFileName);
  } else {
    //titleDIV();
    songTitle = "No song playing";
  }
