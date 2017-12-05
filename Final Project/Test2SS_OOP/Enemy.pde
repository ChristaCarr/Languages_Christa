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

 
 Enemy(color ctemp, float xpostemp, float ypostemp, float xspeedtemp) {
   c = ctemp;
   xpos = xpostemp;
   ypos = ypostemp;
   xspeed = xspeedtemp;
   hit = false;
   
 }
 
 //////////////////////////////////////display function
 void display () {
  rectMode(CENTER); 
  noStroke();
  ship = loadImage ("spaceshp.png");
  image (ship, 50, mouseY); 
  fill(255);
  textSize(30);
  text("CURRENT SCORE: " + score, 50,675);
    
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
    
    if (bulletshoot ==true) {
  bullety = mouseY;
  rect(bulletx, bullety+ 10, 10, 10);
  rect(bulletx, bullety+ 65, 10, 10);
  bulletx = bulletx+5;
} if (bulletfly ==true) {
  rect(bulletx, bullety+ 20, 30, 30);
  rect(bulletx, bullety+ 75, 30, 30);

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
void gameover() {
  //how does the game end!?!
  
}
  
 /////////////////////////////////////////////////////////////////////// 
  void keyPressed() {
  if (keyCode == TAB) {
  bulletshoot = true;   
  } 
  
}  
}