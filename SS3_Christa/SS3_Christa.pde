//Drawing Machine
// move mouse to draw with circle brush
//click and drag to draw with square brush
//opposite sides of the sketch have different strokes
///comment

float r = 0;
float g =0;
float b = random(255);

void setup() {
  size (540, 360); 
  background(255); 
}

void draw(){
//Boolean
for (int y=0; y<=height; y+=20) {
  

//randomizing colors
float r = random(10,20);
float g =random(50, 200);
float b = random(50, 200);
   frameRate(10);
   noStroke();
   fill(r,g,b,10);
   rectMode(CENTER);
   rect(270,y,540,30);
  
// depending on mouse location, colored line is displayed and stroke changes
   if (mouseX<270) {
   stroke(#FFED1C);  
   line(100,0,100,360);
   } else if (mouseX>270) {
      stroke(#FF771C);  
   line(440,0,440,360);
}
}
}
  //fill changes based on mouse location
  void mouseDragged() {
  if (mouseX<270){
    fill(#FF7F2E);
  } else{
    fill(#FFEB2E);}
   rect(mouseX, mouseY, random(100), random(100));  
  }
 // when moving mouse without dragging, shape of brush changes
  void mouseMoved() {
  if (mouseX<270){
    fill(#492EFF);
  } else{
    fill(#00C5FF);}
  ellipse(mouseX, mouseY, random(100), random(100));
  }