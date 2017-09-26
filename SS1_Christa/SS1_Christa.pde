//Short Study #1
//Title: Sun's Path
//At least 5 primitives, variation in stroke weight and fill color
size(1080,720);
background(#DBB7FF);

//gradient
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

//overlay
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