
// creating game states!
String state = "Intro";

void setup () {
  size(1000,700);
  textSize (25);
}

void draw() {
  if (state == "Intro") {
    //load intro movie or image sequence
    background(0);
    text("this is the intro sequence!!", width/2,height/2);
    
  
}  else if (state == "title screen") {
  background(0);
  text( "Title Screen", width/2, height/2);
  
  
  
}  else if (state == "rules") {
  background(0);
  text( "Rules will be explained here", width/2, height/2);

  
  
  
}  else if (state == "round 1") {
  
  
  
  

}  else if (state == "skit 1") {
  background(0);
  text( "Short Visual novel style dialogue here", width/2, height/2);
 
  
  
  
} else if (state == "round 2") {
  background(#6050FF);
  
  
  
  
}  else if (state == "skit 2") {
  background(0);
  text( "Short Visual novel style dialogue here", width/2, height/2);
  
  
  
  
}  else if (state == "game complete") {
  background(#50FF51);
  text( "You Completed the Game!", width/2, height/2);
  
  
  
  
  
} else if (state == "game over") {
  background(#FF505C);
  text("You Failed the Game!", width/2, height/2);
  
  
  
  
  
  
}  else if (state == "scoreboard") {
  background(0);
  text( "Input your initials", width/2, height/2);
  
  
  
  
}
  
  
}



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