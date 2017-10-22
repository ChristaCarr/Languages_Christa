//Coin Catch Game Structure

String state = "Coin Catch";
float x;
float fishX = mouseX; 
float fishY = 450; //height of fish png should = 350px
float y = -70;

//variables for our timer
int timer1= 10000; //10 second timer
int timer2= 35000; //35 second timer
int currentTime=0; 


void setup () {
 size(800,800);
 background(255);
}

//creating ball bounce function
void ballbounce () {
background(255);
fill(0);
ellipse (x , y, 50, 50);

//movement of ball
if (y <= fishY) {
  y=y+6;
}else if (x >= (mouseX - 75) && x <= (mouseX+ 75)) {
  y=y*-1;
}else {
  y=y+6;
}

// random ball drop
if (y <= -70) {
  x = random(50,750);
}
// if you miss one it's game over
if (y >= 750) {
state = "game over";
}  
// After 30 seconds the game is done
if (currentTime>timer2) {
  state = "finish game";
}
}


void draw() { 
currentTime = millis();
noCursor();
  
if (state == "Coin Catch") {   
ballbounce();
rect(mouseX,450, 100,350); //fish placeholder
} else if (state == "game over") {
  background(0);
} else if (state == "finish game") {
  background(150);
}
}