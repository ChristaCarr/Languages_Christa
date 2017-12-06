class Enemy {
 color c; ///color of enemy
 float xpos; ///xpos of enemy
 float ypos; ///ypos of enemy
 float xspeed; ///speed of enemy
 boolean hit; //is the enemy hit
 boolean dead; //enemy is dead
 PImage ship;
 boolean bulletshoot; //has the key been pressed?
 boolean bulletfly; // now you can shoot again
 int bulletx = 150;
 int bullety;
 int score = 0;
 String state = "play";
 PImage lose;
 PImage win;
 

 
 Enemy(color ctemp, float xpostemp, float ypostemp, float xspeedtemp) {
   c = ctemp;
   xpos = xpostemp;
   ypos = ypostemp;
   xspeed = xspeedtemp;
   hit = false;
   
 }
 
 //////////////////////////////////////display function
 void display () {
   if (state == "play") {
  rectMode(CENTER); 
  noStroke();
  ship = loadImage ("spaceshp.png");
  image (ship, 50, mouseY); 
  fill(255);
  textSize(30);
  text("CURRENT SCORE: " + (score), 50,675);
    
////////////////////body of enemy
  if (hit) {
  fill(c, 0);
  rect(xpos, ypos, 60, 30);
  rect(xpos, ypos, 50, 40);
  rect(xpos, ypos, 40, 50);
  rect(xpos-10, ypos+25, 5, 35); //legs things
  rect(xpos+10, ypos+25, 5, 35);
  rect(xpos, ypos+25, 5, 35);
  score = score + 10;
   }else if (dead) {
  fill(c, 0); 
  rect(xpos, ypos, 60, 30);
  rect(xpos, ypos, 50, 40);
  rect(xpos, ypos, 40, 50);
  rect(xpos-10, ypos+25, 5, 35); //legs things
  rect(xpos+10, ypos+25, 5, 35);
  rect(xpos, ypos+25, 5, 35);
   }  
   else {
  fill(c, 255);
  rect(xpos, ypos, 60, 30);
  rect(xpos, ypos, 50, 40);
  rect(xpos, ypos, 40, 50);
  rect(xpos-10, ypos+25, 5, 35); //legs things
  rect(xpos+10, ypos+25, 5, 35);
  rect(xpos, ypos+25, 5, 35);
   }
   } else if (state == "lose") {
     /// what displays if you lose
     lose = loadImage("YouLose.png");
     background(lose);    
   }else if (state == "win") {
    ///what displays if you win
    win = loadImage("YouWin.png");
    background(win);
  }
  
   
//////////////////////////////////////////////////////////eyes of enemy   
    if (hit) {
  fill(c+50, 0);
  rect(xpos-10,ypos,10,10);
  rect(xpos+10,ypos,10,10);
   } else if (dead) {
  fill(c+50, 0);
  rect(xpos-10,ypos,10,10);
  rect(xpos+10,ypos,10,10);
   }   
   else { ///alive!
  fill(c+50, 255);
  rect(xpos-10,ypos,10,10);
  rect(xpos+10,ypos,10,10);
   }   
 }
 //////////////////////////////////////////////////////moving the enemy!
 void move () {
   xpos= xpos - xspeed;
   if (xpos < -50) {
   xpos= 1100;
   }     
}

/////////////////////////////////////////////////////////////////
  void bulletcontact() {
    
    if (bulletshoot == true) {
  bullety = mouseY;
  rect(bulletx, bullety+ 10, 10, 10);
  rect(bulletx, bullety+ 65, 10, 10);
  bulletx = bulletx+5;
} if (bulletfly ==true) {
  rect(bulletx, bullety+ 20, 30, 30);
  rect(bulletx, bullety+ 75, 30, 30);
}

  if(bulletshoot == false) {
    fill(c, 0);
    rect(bulletx, bullety+ 10, 10, 10);
    rect(bulletx, bullety+ 65, 10, 10);
    
  }
      
    if ( bulletx >= 1000) {
    bulletshoot = false;
    bulletx=150;
  }
    
    /////left edge is x, right edge is x+w
    if (bulletx >= xpos-30 && bulletx <= xpos +30 && bullety >= ypos - 75 && bullety <= ypos + 75){
      hit = true;
      dead = true;
    } else {
      hit = false;
    }
  }
  
////////////////////////////////////////////////////////////////////////
void gameend() {
  //how does the game end!?!
  if (hit == false && xpos <= 186) { //enemy is alive
     xpos = 185;
     fill(255);
     state = "lose";
     bulletshoot = false;
     
   } else if (dead == true && xpos <= 186) { //change to opacity = 0 using variable//enemy is dead
     xpos = 185;
     fill(255);
     state = "win";
     bulletshoot = false;
     if (mousePressed ==true) {
     /////  state = game over (set up game over and game complete states in here?
     state = "scoreboard";
     }
   }
  
  
  
}
  
 /////////////////////////////////////////////////////////////////////// 
  void keyPressed() {
  if (keyCode == TAB) {
  bulletshoot = true;   
  }   
}  
}