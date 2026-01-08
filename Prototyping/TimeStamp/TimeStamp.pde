int timerStart, currentTime;
//
void setup() {
  timerStart = currentTime = millis(); //measure program start time called "scope"
  println("Beginning", timerStart);
  //code for setup()
  println("End Setup", currentTime - timerStart);
} //end setup
//
void draw() {
  println("Draw", timerStart);
  noLoop();
} //end draw
//
void mousePressed() {
} //end mouse pressed
//
void keyPressed() {
}//end key pressed
