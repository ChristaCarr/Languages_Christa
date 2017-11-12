class Enemy {
 color c;
 float xpos;
 float ypos;
 float xspeed;
 
 Enemy(color ctemp, float xpostemp, float ypostemp, float xspeedtemp) {
   c = ctemp;
   xpos = xpostemp;
   ypos = ypostemp;
   xspeed = xspeedtemp;
 }
 
 
 void display () {
  fill(c);
  rectMode(CENTER);
  noStroke();
  rect(xpos, ypos, 60, 30);
  rect(xpos, ypos, 50, 40);
  rect(xpos, ypos, 40, 50);
  rect(xpos-10, ypos+25, 5, 35);
  rect(xpos+10, ypos+25, 5, 35);
  rect(xpos, ypos+25, 5, 35);
  fill(c+100);
  rect(xpos-10,ypos,10,10);
  rect(xpos+10,ypos,10,10);
   
 }
 
 void move () {
   xpos= xpos - xspeed;
   if (xpos < 0) {
   xpos= width+50;
   }
   
}
}