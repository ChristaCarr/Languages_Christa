//Short Study #2
//Title: Sun's Path (Interactive)
//At least 5 primitives, variation in stroke weight and fill color
//use of keypress and mousepress
//use of variables

// declaring variables for animation
float grow = 360;
float r;
float g;
float b;
float a;

//simple set up
void setup() {
  
frameRate(8);
size(1080,720);
background(#DBB7FF);

}

//gradient BG 
void draw() {
noStroke();
fill(#3D385A,230);
rect(0,648,1080,720);
fill(#040352,205);
rect(0,576,1080,648);
fill(#C435B3,180);
rect(0,504,1080,576);
fill(#C435B3,155);
rect(0,432,1080,504);
fill(#FF0000,130);
rect(0,360,1080,432);
fill(#FF8000,105);
rect(0,288,1080,360);
fill(#FAFF00, 80);
rect(0,216,1080,288);
fill(#29FF00,55);
rect(0,144,1080,216);
fill(#00FFAC,30);
rect(0,72,1080,144);
 
//set variables for randomized color
r = random(255);
g = random(255);
b = random(255);
a = 50;

//When left mouse is pressed, use these random colors to animate an arc
if (mousePressed == true) {
if (mouseButton == LEFT) {
noStroke();
fill(r,g,b,a);
arc(540, 360, 1300, 1300, 0,PI/grow);
grow = (grow/2);
a = a * .05;
}
}

//When right mouse is pressed sun overlay appears
if (mousePressed == true) {
if (mouseButton == RIGHT) {
fill(#FFFFFF,50);
strokeWeight(10);
stroke(#FAFF08, 50);
ellipse(50,580,25,25);
ellipse(1030,580,25,25);

strokeWeight(12);
stroke(#FAFF08, 55);
ellipse(180,450,50,50);
ellipse(900,450,50,50);

strokeWeight(15);
stroke(#FAFF08, 60);
ellipse(720,300,75,75);
ellipse(360,300,75,75);

fill(#FFFFFF,100);
strokeWeight(25);
stroke(#FAFF08, 100);
ellipse(540,180,100,100);
}
}

//Both effects happen at once with center click
if (mousePressed == true) {
if (mouseButton == CENTER) {

//sun overlay
fill(#FFFFFF,50);
strokeWeight(10);
stroke(#FAFF08, 50);
ellipse(50,580,25,25);
ellipse(1030,580,25,25);

strokeWeight(12);
stroke(#FAFF08, 55);
ellipse(180,450,50,50);
ellipse(900,450,50,50);

strokeWeight(15);
stroke(#FAFF08, 60);
ellipse(720,300,75,75);
ellipse(360,300,75,75);

fill(#FFFFFF,100);
strokeWeight(25);
stroke(#FAFF08, 100);
ellipse(540,180,100,100);

//randomized color BG
noStroke();
fill(r,g,b,a);
arc(540, 360, 1300, 1300, 0,PI/grow);
grow = (grow/2);
a = a * .05;
}
}
}

//To reset the colors in the BG press any key
void keyPressed() {
background(#DBB7FF);
 }