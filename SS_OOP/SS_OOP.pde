//setting up an 8 bit game

Enemy[] enemies = new Enemy[8];
Enemy[] enemies2 = new Enemy[7];
Enemy[] enemies3 = new Enemy[8];
//array of enemies for each row

PImage ship;

void setup () {
noCursor();
size (1000, 700); 
ship = loadImage ("spaceshp.png");

for(int i =0; i < enemies.length; i++) {
enemies[i] = new Enemy(color( 100, 255, 255), 1300, 75*i+75, .75);
}
//initialize one row


for(int i = 0; i < enemies2.length; i++){
 enemies2[i] = new Enemy(color(255, 100, 255), 1200, 75*i +110, .75); 
}
//initialize another row

for(int i = 0; i < enemies3.length; i++){
 enemies3[i] = new Enemy(color(150, 10, 255), 1100, 75*i +75, .75); 
}
//initialize another row
}

void draw () {
  
background(0);
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
}