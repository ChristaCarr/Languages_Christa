//Naming outside images
PShape orange1;
PShape orange2;
PShape orange3;
PImage watertank;

//Naming processing variables
float angle = 0.0;
float offset = 400;
float scalar = 35;
float speed = 0.06;
int radius = 40;
float move = 0;

//Let's begin!
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
    
  //Create animation
  float y1 = offset + sin(angle) * scalar;
  float y2 = offset + sin(angle + 0.4) * scalar;
  float y3 = offset + sin(angle + 0.8) * scalar;
   
  //Import the orange fish
    shape(orange1, 498,y1, 250,300);
    shape(orange2, 380,y2, 250,300);
    shape(orange3, 275,y3, 250,300);
    
    angle += speed;  
   
   
    if (mousePressed == true) {
 //Set the background image!
    background(watertank); 
  
  //Create animation 
  //Import the orange fish
    shape(orange1, 498+move,y1, 250,300);
    shape(orange2, 380+move,y2, 250,300);
    shape(orange3, 275+move,y3, 250,300);
    
    angle += speed;  
    y1= y1+5;
    move = move+2;
    
    if (move>600) {
      move=-600;
    }
}
}