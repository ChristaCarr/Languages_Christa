class Enemy {
  color c; ///color of enemy
  float xpos; ///xpos of enemy
  float ypos; ///ypos of enemy
  float xspeed; ///speed of enemy
  boolean alive;
  boolean hit; //is the enemy hit
  boolean dead; //enemy is dead
  PImage ship;
  boolean bulletshoot; //has the key been pressed?
  boolean bulletfly; // now you can shoot again
  int bulletx = 150;
  int bullety;
  int score = 0;
  int opacityon = 255;
  int opacityoff = 0;
  boolean opacityup;
  


  Enemy(color ctemp, float xpostemp, float ypostemp, float xspeedtemp) {
    c = ctemp;
    xpos = xpostemp;
    ypos = ypostemp;
    xspeed = xspeedtemp;
    alive = true;
    hit = false;
    opacityup = true;
  }

  //////////////////////////////////////display function
  void display () {
    rectMode(CENTER); 
    noStroke();
    ship = loadImage ("spaceshp.png");
    image (ship, 50, mouseY); 
    fill(255);
    textSize(30);
    text("CURRENT SCORE: " + (scoreTotal), 50, 675);  //<<<<<<<<<<<<

    ////////////////////body of enemy
    if (hit) {
      opacityup = false;
      fill(c, opacityoff);
      rect(xpos, ypos, 60, 30);
      rect(xpos, ypos, 50, 40);
      rect(xpos, ypos, 40, 50);
      rect(xpos-10, ypos+25, 5, 35); //legs things
      rect(xpos+10, ypos+25, 5, 35);
      rect(xpos, ypos+25, 5, 35);
      //score = score + 10;
      scoreTotal = scoreTotal + 10; //<<<<<<<<<<<<
    } else if (dead) {
      opacityup = false;
      fill(c, opacityoff); 
      rect(xpos, ypos, 60, 30);
      rect(xpos, ypos, 50, 40);
      rect(xpos, ypos, 40, 50);
      rect(xpos-10, ypos+25, 5, 35); //legs things
      rect(xpos+10, ypos+25, 5, 35);
      rect(xpos, ypos+25, 5, 35);
    } else {
      opacityup = true;
      fill(c, opacityon);
      rect(xpos, ypos, 60, 30);
      rect(xpos, ypos, 50, 40);
      rect(xpos, ypos, 40, 50);
      rect(xpos-10, ypos+25, 5, 35); //legs things
      rect(xpos+10, ypos+25, 5, 35);
      rect(xpos, ypos+25, 5, 35);
    }
    //////////////////////////////////////////////////////////eyes of enemy   
    if (hit) {
      opacityup = false;
      fill(c+50, opacityoff);
      rect(xpos-10, ypos, 10, 10);
      rect(xpos+10, ypos, 10, 10);
    } else if (dead) {
      opacityup = false;
      fill(c+50, opacityoff);
      rect(xpos-10, ypos, 10, 10);
      rect(xpos+10, ypos, 10, 10);
    } else { ///alive!
      opacityup = true;
      fill(c+50, opacityon);
      rect(xpos-10, ypos, 10, 10);
      rect(xpos+10, ypos, 10, 10);
    }
    
    if ( opacityup == true) {
      alive = true;}
    else if (opacityup == false) {
      alive = false;}
  }
  //////////////////////////////////////////////////////moving the enemy!
  void move () {
    xpos= xpos - xspeed;
    if (xpos < -50) {
      xpos= 1100;
    }  
      
      if (alive == false && xpos <= 190) {
      xpos =185; 
      fill(255);
      state = "skit 1";  //<<<<<<<<<<<<<
      //xpos = -xpos; didn't work, each row resets individually
      bulletshoot = false;
    }


    else if (alive == true && xpos <= 200) {
      xpos = 185;
      fill(255);
      state = "game over";  //<<<<<<<<<<<<<
      //xpos = -xpos; didn't work, each row resets individually
      bulletshoot = false;
    }
      
 
  }

  /////////////////////////////////////////////////////////////////
  void bulletcontact() {

    if (keyPressed && key == TAB) {
      bulletshoot = true;
    }

    if (bulletshoot ==true) {
      bullety = mouseY;
      rect(bulletx, bullety+ 10, 10, 10);
      rect(bulletx, bullety+ 65, 10, 10);
      bulletx = bulletx+5;
    } 
    if (bulletfly ==true) {
      rect(bulletx, bullety+ 20, 30, 30);
      rect(bulletx, bullety+ 75, 30, 30);
    }
    if ( bulletx >= 1000) {
      bulletshoot = false;
      bulletx=150;
    }

    /////left edge is x, right edge is x+w
    if (bulletx >= xpos-30 && bulletx <= xpos +30 && bullety >= ypos - 75 && bullety <= ypos + 75) {
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
  /*   
  void keyPressed() {
   if (keyCode == TAB) {
   bulletshoot = true;   
   } 
   
   } 
   */
}