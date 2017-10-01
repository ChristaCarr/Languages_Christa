PShape orange1;
PShape orange2;
PShape orange3;
PImage watertank;

void setup() {
  size(800,800);
  orange1 = loadShape("orangehead.svg");
  orange2 = loadShape ("orangemid.svg");
  orange3 = loadShape ("orangetail.svg");
  watertank = loadImage ("waterbg.png");
  shapeMode(CENTER);
  
}

void draw () {
  //Set the background image!
    background(watertank);
   
  //Import the fish
    shape(orange1, 400,400, 800,800);
}