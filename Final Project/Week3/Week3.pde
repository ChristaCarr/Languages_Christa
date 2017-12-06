/////////////////////////setting up an 8 bit game
int score1 = 0;
int score2 = 0;
int score3 = 0;
Enemy[] enemies = new Enemy[8];
Enemy[] enemies2 = new Enemy[7];
Enemy[] enemies3 = new Enemy[8];
//array of enemies for each row in Round 1

//////////////////////////intro video
import processing.video.*;
Movie movie;
/////////////////////////bg images!
PImage highscore;
PImage rules;
PImage title;
PImage lose;
PImage win;
PImage ship;
PImage novel;

//////////////////////////////////////////////////////////typewriter variables!
String text1 = "hello, make this a typewriter.";
String text2 = "I am typing more below the first line.";
PFont font;
int counter;
int counter2;
////////////////////////////////////////////////////////highscore variables

//Variable to store text currently being typed
String typing = "";
//Variable to store saved text when return is hit
String saved = "";


/////////////////////////////////////////////////// creating game states!
String state = "Intro";

//////////////////////////////////////////////////
void setup () {
frameRate(60);
font = createFont("OCRAStd.otf", 32);
textFont (font);
textSize (25);
noCursor();
size (1000, 700); 
title = loadImage("Title.png");
highscore = loadImage("HighScore.png");
rules = loadImage("Rules.png");
lose = loadImage("YouLose.png");
win = loadImage("YouWin.png");
ship = loadImage ("spaceshp.png");
novel = loadImage ("VisualNovel.png");
movie = new Movie(this, "Christa Carr Final1.mp4");
movie.play();



/////////////////////////////////////////////arrays of enemies
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
    
    if (movie.available()) {
     movie.read(); 
    }
    cursor(CROSS);
    textSize (25);
    background(0);
    image(movie,0,60);
    fill(255);
    text( "CLICK THE MOUSE TO CONTINUE", 250, 675);
   
   
    
    
    
//////////////////////////////////////////////////////////////////////////////  
}  else if (state == "title screen") {
  background(0);
  text( "Title Screen", width/2, height/2);
  image(title, 0,0);
  
  
  
 ////////////////////////////////////////////////////////////////////////////// 
}  else if (state == "rules") {
  background(0);
  text( "Rules will be explained here", width/2, height/2);
  image(rules, 0, 0);
  
//////////////////////////////////////////////////////////////////////////////  
}  else if (state == "round 1") {
frameRate(60);
noCursor();
background(0); 
fill(255);
textSize(30);
  

for(int i = 0; i< enemies.length; i++) {
 enemies[i]. display();
 enemies[i].move();
 enemies[i].keyPressed();
 enemies[i].bulletcontact();
 enemies[i].gameend();
}
//calling up and animating array

for (int i = 0; i < enemies2.length; i++) {
 enemies2[i].display();
 enemies2[i].move();
 enemies2[i].keyPressed();
 enemies2[i].bulletcontact();
 enemies2[i].gameend();
}
//calling up and animating array

for (int i = 0; i < enemies3.length; i++) {
 enemies3[i].display();
 enemies3[i].move();
 enemies3[i].keyPressed();
 enemies3[i].bulletcontact();
 enemies3[i].gameend();
}
//calling up and animating array


//////////////////////////////////////////////////////////////////////////////
}  else if (state == "skit 1") {
 
  cursor(CROSS);
  background(novel);
  fill(255);
  typewriteText();
 
 
  
  
////////////////////////////////////////////////////////////////////////////// 
} else if (state == "round 2") {
  noCursor();
  background(0);
  text( "level 2! with more difficulty", width/2, height/2);
  image (ship, 50, mouseY);
  
  
  
//////////////////////////////////////////////////////////////////////////////  
}  else if (state == "skit 2") {
  cursor(CROSS);
  background(0);
  text( "Short Visual novel style dialogue here", width/2, height/2);
  image(novel, 0,0);
  
  
//////////////////////////////////////////////////////////////////////////////  
}  else if (state == "game complete") {
  background(#50FF51);
  text( "You Completed the Game!", width/2, height/2);
  image(win, 0, 0);
  
  
  
//////////////////////////////////////////////////////////////////////////////  
} else if (state == "game over") {
  background(lose);
  text("You Failed the Game!", width/2, height/2);
  image(lose, 0, 0);  
  
  
//////////////////////////////////////////////////////////////////////////////  
}  else if (state == "scoreboard") {
  background(highscore);
  int indent = 320;
  fill(255);
  textSize(20);
  cursor();
 
 
 //Display everything 
 text("Please type your intials below. \nHit return to save your score.\nClick mouse to restart the game.", 280, 135);
 textSize(45);
 text(typing, indent, 275);
 text(saved, indent, 300);
  
  
  
}
    
}


//////////////////////////////////////////////////////////////////////////////
///mouse button clicks
void mousePressed () {
  if (state == "Intro"){
      movie.stop();
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
    movie.play();
    
  }
}

//////////////////////////////////////////typewriter function!
///Code from https://forum.processing.org/two/discussion/1823/typewrite-effect-typing-one-by-one-with-delay-on-the-strings
void typewriteText() {
  frameRate(8);
  smooth();
  
   if(counter < text1.length()){
    counter++;
    text(text1.substring(0, counter), 600, 775, width, height);
   }else if (counter == text1.length()){
     text(text1, 100, 450);  
   }
   
   
   
   if(counter>=text1.length() && counter2 < text2.length()){
    counter2++;
    text(text2.substring(0, counter2), 600, 825, width, height);
   }else if (counter2 == text2.length()) {
     text(text2, 100, 500);
   }
   
   
}
/////////////////////////////////////////////////////////////keyPressed statements!
void keyPressed() {
  //If the return key is pressed, save the String and clear it
  if(state == "scoreboard" && key =='\n'){
    saved = typing;
    typing = "";    
    
//Otherwise, concatenate the string
  }else{
    typing = typing + key;
  }
}