//setting up an 8 bit game

Enemy[] enemies = new Enemy[8];
Enemy[] enemies2 = new Enemy[7];
Enemy[] enemies3 = new Enemy[8];
//array of enemies for each row in Round 1

PImage ship;

// creating game states!
String state = "Intro";

void setup () {
textSize (25);
noCursor();
size (1000, 700); 
ship = loadImage ("spaceshp.png");

for(int i =0; i < enemies.length; i++) {
enemies[i] = new Enemy(color( 100, 255, 255), 1300, 75*i+75, .75);
}
//initialize one row//////////////////////////////////////////////////////////////////////////////

for(int i = 0; i < enemies2.length; i++){
 enemies2[i] = new Enemy(color(255, 100, 255), 1200, 75*i +110, .75); 
}
//initialize another row//////////////////////////////////////////////////////////////////////////////

for(int i = 0; i < enemies3.length; i++){
 enemies3[i] = new Enemy(color(150, 10, 255), 1100, 75*i +75, .75); 
}
//initialize another row//////////////////////////////////////////////////////////////////////////////
}


//////////////////////////////////////////////////////////////////////////////

void draw() {
  if (state == "Intro") {
    //load intro movie or image sequence
    background(0);
    text("this is the intro sequence!!", width/2,height/2);
    
//////////////////////////////////////////////////////////////////////////////  
}  else if (state == "title screen") {
  background(0);
  text( "Title Screen", width/2, height/2);
  
  
 ////////////////////////////////////////////////////////////////////////////// 
}  else if (state == "rules") {
  background(0);
  text( "Rules will be explained here", width/2, height/2);

  
  
//////////////////////////////////////////////////////////////////////////////  
}  else if (state == "round 1") {
   
background(0);
text( "level 1 easy", width/2, height/2); 
image (ship, 50, mouseY);


for(int i = 0; i< enemies.length; i++) {
 enemies[i]. display();
 enemies[i].move();
}
//calling up and animating array

for (int i = 0; i < enemies2.length; i++) {
 enemies2[i].display();
 enemies2[i].move();
}
//calling up and animating array

for (int i = 0; i < enemies3.length; i++) {
 enemies3[i].display();
 enemies3[i].move();
}
//calling up and animating array


//////////////////////////////////////////////////////////////////////////////
}  else if (state == "skit 1") {
  background(0);
  text( "Short Visual novel style dialogue here", width/2, height/2);
 
  
  
////////////////////////////////////////////////////////////////////////////// 
} else if (state == "round 2") {
  background(0);
  text( "level 2! with more difficulty", width/2, height/2);
  image (ship, 50, mouseY);
  
  
  
//////////////////////////////////////////////////////////////////////////////  
}  else if (state == "skit 2") {
  background(0);
  text( "Short Visual novel style dialogue here", width/2, height/2);
  
  
  
//////////////////////////////////////////////////////////////////////////////  
}  else if (state == "game complete") {
  background(#50FF51);
  text( "You Completed the Game!", width/2, height/2);
  
  
  
  
//////////////////////////////////////////////////////////////////////////////  
} else if (state == "game over") {
  background(#FF505C);
  text("You Failed the Game!", width/2, height/2);
  
  
  
  
  
//////////////////////////////////////////////////////////////////////////////  
}  else if (state == "scoreboard") {
  background(0);
  text( "Input your initials", width/2, height/2);
  
  
  
  
}
    
}


//////////////////////////////////////////////////////////////////////////////
///mouse button clicks
void mousePressed () {
  if (state == "Intro"){
      state = "title screen";
      
  }else if (state == "title screen"){
    state = "rules";
    
    
  }else if (state == "rules"){
    state = "round 1";
    
    
  }else if (state == "round 1"){
    state = "skit 1";
  
  
  }else if (state == "skit 1") {
    state = "round 2";
       
    
  }else if (state == "round 2") {
    state = "skit 2";
  
  }else if (state == "skit 2") {
    state = "game complete";
    
    
  }else if (state == "game complete") {
    state = "scoreboard"; 
    
    
  }else if (state == "scoreboard"){
    state = "Intro";
    
  }
  
  
  
}