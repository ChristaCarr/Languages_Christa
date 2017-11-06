///Image array!

int maxImages = 205; //total # of images
int imageIndex = 0; //initial image to display
PImage[] spaceship = new PImage[maxImages];


void setup () {
 size( 800, 450); 
 for (int i = 0; i < spaceship.length; i++) {
 spaceship[i] = loadImage( "codingtest" + i + ".png"); //loading the array
}
}


void draw () {
  background(0);
  frameRate(35);
  image(spaceship[imageIndex], 0 ,0);
  
  imageIndex = (imageIndex + 1) % spaceship.length;
  
}