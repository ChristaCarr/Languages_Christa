float foodfall = -50;
float fooddrift = random(490,510);


void setup () {
  size (800,800);
  background(0);
}

void feed (int x, int y) {
  noStroke ();
 fill( #D18F26, 255);
  if ( foodfall >= 450) {
  fill(#D18F26, 0);
 }else if (foodfall >=425) {
  fill(#D18F26, 100); 
 }else if (foodfall >= 400) {
  fill (#D18F26, 200); 
 } 
 float fooddrift = random(495,505);
 ellipse (fooddrift+x,foodfall+y,30,30); 
 foodfall= foodfall +2;
 }
 

void draw () {
 background(0);
 fill(#D18F26);
 feed (50,0);
 feed (-50, -25);
 feed (0, -70);
 
}