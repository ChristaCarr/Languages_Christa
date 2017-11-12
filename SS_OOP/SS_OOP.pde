Enemy[] enemies = new Enemy[50];
//array of 50 enemies

void setup () {
size (1000, 700);  

//initialize with for loop
for(int i = 0; i < enemies.length; i= i+15) {
  enemies[i] = new Enemy ( color(i*2), i*2, 50, 1 ); //what are these values??
}

}

void draw () {
background(255);

for(int i =0; i < enemies.length; i= i+15) {
 enemies[i].move();
 enemies[i].display();
}
  
}