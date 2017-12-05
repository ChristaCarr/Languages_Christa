//setting up an 8 bit game
Enemy Enemy1;

void setup () {
noCursor();
size (1000, 700); 

Enemy1 = new Enemy(color( 100, 255, 255), 1000, 350, .75);


}

void draw () {
background(0);
Enemy1.keyPressed();
Enemy1.display();
Enemy1.move();
Enemy1.bulletcontact();

  
}