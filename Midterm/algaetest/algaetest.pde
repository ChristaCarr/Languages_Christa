PImage algaeoverlay;


int timer1= 10000; //setting up timer variable for 2000 millisecond trigger
int currentTime=0;
int savedTime=0;

void setup() {
size(800,800);
algaeoverlay = loadImage ("algae overlay.png");
}

void algae () {
  currentTime=millis();
  if (currentTime-savedTime > timer1) { 
    savedTime=currentTime; //assign value of currentTime to savedTime
    image(algaeoverlay,0,0,800,800);
    tint(255, 0);
    
}
}

void draw () {
 
  algae ();
  
    
}