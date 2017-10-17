//Naming outside images
PShape orange1;
PShape orange2;
PShape orange3;
PShape blue1;
PShape blue2;
PShape blue3;
PShape pink1;
PShape pink2;
PShape pink3;
PFont font;

PImage watertank;

//Naming processing variables
float angle = 0.0;
float offset = 400;
float scalar = 35;
float speed = 0.06;
int radius = 40;
int move = 0;
int move2 = 0;

//creating game states
String state = "title screen";

void setup () { 
 size(800,800);
  watertank = loadImage ("waterbg.png");
  orange1 = loadShape("orangehead.svg");
  orange2 = loadShape ("orangemid.svg");
  orange3 = loadShape ("orangetail.svg");
  blue1 = loadShape ("bluehead.svg");
  blue2 = loadShape ("bluemid.svg");
  blue3 = loadShape ("bluetail.svg");
  pink1 = loadShape ("pinkhead.svg");
  pink2 = loadShape ("pinkmid.svg");
  pink3 = loadShape ("pinktail.svg");
  font = createFont ("backlash.ttf", 60);
  textFont(font);
  textSize (25);
  
  shapeMode(CENTER); 
}


void draw () {
  if (state== "title screen") {
    background(0);
    fill(255);
    text( "TITLE", width/2, height/3);
    text("click anywhere to start", width/2,height/2);
  }else if (state == "color select") {
    background(0);
    stroke(255);
    rectMode (CENTER);
    fill(#1AB0FF);
    rect(width/2,height/2, 100,50);
    fill(#9F1AFF);
    rect(width/4, height/2,100,50);
    fill(#FF9C1A);
    rect(600, height/2, 100,50);
    
    //rollover highlight
    if (mouseX > 150 && mouseX < 250 && mouseY > 380 && mouseY < 420) {
      fill(#FFFFFC, 50);
      rect( width/4, height/2, 150,90);
    } else if (mouseX > 350 && mouseX < 450 && mouseY > 380 && mouseY < 420) {
      fill(#FFFFFC, 50);
      rect( width/2, height/2, 150,90);
    } else if (mouseX > 550 && mouseX < 650 && mouseY > 380 && mouseY < 420) {
      fill(#FFFFFC, 50);
      rect( 600, height/2, 150,90);
    }
    
    
  } else if (state == "purple main"){
 //insert all code for main sequence with purple fish
 background(#D11EFA);
  //Set the background image!
    background(watertank);
    cursor(HAND);
    
    //buttons!
    rectMode (CENTER);
    fill(#FF34DE, 100);
    rect(100,600, 100,50);
    rect(100,500, 100, 50);
    rect(100,400, 100, 50);
    rect(100,50,100, 50);
    
    fill(255);
    stroke(255);
    text("FEED", 75,510);
    text("PLAY", 75, 410);
    text("CLEAN", 75,610);
    text("BACK", 75,60);
    
    //rollover
    if (mouseX > 50 && mouseX < 150 && mouseY > 40 && mouseY <80) {
      fill(255,100);
      rect(100, 50, 100, 50);
    } else if (mouseX > 50 && mouseX <150 && mouseY > 350 && mouseY < 450) {
      fill (255,100);
      rect(100,400, 100, 50);
    } else if (mouseX > 50 && mouseX < 150 && mouseY > 450 && mouseY <550) {
      fill (255,100);
      rect(100,500,100,50);
    } else if (mouseX >50 && mouseX < 150 && mouseY > 550 && mouseY < 650) {
      fill (255,100);
      rect(100,600,100,50);    
    }
  
    
  //Create animation
  float y1 = offset + sin(angle) * scalar;
  float y2 = offset + sin(angle + 0.4) * scalar;
  float y3 = offset + sin(angle + 0.8) * scalar;
   
   angle += speed;
   
  //Import the main fish
    shape(pink1, 2 +move2, y1, 250,300);
    shape(pink2, -120 +move2, y2, 250,300);
    shape(pink3, -225 +move2, y3, 250,300);
    
    move2 = move2+2;
    if (move2 > 500) {
      move2= move2-2;}
    
      
//import the blue fish
    shape(orange1, 297+move,(y1/2), 73,90);
    shape(orange2, 262+move,(y2/2), 70,83);
    shape(orange3, 230+move,(y3/2), 83,100);

    shape(blue1, 486+move,y1/3, 63,80);
    shape(blue2, 462+move,y2/3, 50,63);
    shape(blue3, 438+move,y3/3, 63,80);
    move = move+2;
    if (move>600||move<-600) {
      move=-600;
    }
   
   shape(blue1, 430-move, (y1/3)+150, -83,100);
   shape(blue2, 462-move, (y2/3)+150, -70,-83);
   shape(blue3, 495-move, (y3/3)+150, -83,-100);
   
   shape(orange1, 218-move,(y1/2)-150, -90,110);
   shape(orange2, 262-move,(y2/2)-150, -90,-103);
   shape(orange3, 303-move,(y3/2)-150, -103,-120);
 
 
 
} else if (state == "blue main"){
  //insert all code for main sequence with blue fish
 background(#D11EFA);
  //Set the background image!
    background(watertank);
    cursor(HAND);
    
     //buttons!
    rectMode (CENTER);
    fill(#34C0FF, 100);
    rect(100,600, 100,50);
    rect(100,500, 100, 50);
    rect(100,400, 100, 50);
    rect(100,50,100, 50);
    
    fill(255);
    stroke(255);
    text("FEED", 75,510);
    text("PLAY", 75, 410);
    text("CLEAN", 75,610);
    text("BACK", 75,60);
    
    //rollover
    if (mouseX > 50 && mouseX < 150 && mouseY > 40 && mouseY <80) {
      fill(255,100);
      rect(100, 50, 100, 50);
    } else if (mouseX > 50 && mouseX <150 && mouseY > 350 && mouseY < 450) {
      fill (255,100);
      rect(100,400, 100, 50);
    } else if (mouseX > 50 && mouseX < 150 && mouseY > 450 && mouseY <550) {
      fill (255,100);
      rect(100,500,100,50);
    } else if (mouseX >50 && mouseX < 150 && mouseY > 550 && mouseY < 650) {
      fill (255,100);
      rect(100,600,100,50);    
    }
  
    
    
  //Create animation
  float y1 = offset + sin(angle) * scalar;
  float y2 = offset + sin(angle + 0.4) * scalar;
  float y3 = offset + sin(angle + 0.8) * scalar;
   
   angle += speed;
   
  //Import the main fish
    shape(blue1, -5 +move2, y1, 275,325);
    shape(blue2, -120 +move2, y2-20, 250,300);
    shape(blue3, -220 +move2, y3, 250,300);
    
    move2 = move2+2;
    if (move2 > 500) {
      move2= move2-2;}
    
      
//import the blue fish
    shape(pink1, 300+move,(y1/2), 83,100);
    shape(pink2, 262+move,(y2/2), 70,83);
    shape(pink3, 230+move,(y3/2), 83,100);

    shape(orange1, 490+move,y1/3, 58,75);
    shape(orange2, 462+move,y2/3, 50,63);
    shape(orange3, 438+move,y3/3, 63,80);
    move = move+2;
    if (move>600||move<-600) {
      move=-600;
    }
   
   shape(orange1, 425-move, (y1/3)+150, -78,95);
   shape(orange2, 462-move, (y2/3)+150, -70,-83);
   shape(orange3, 495-move, (y3/3)+150, -83,-100);
   
   shape(pink1, 216-move,(y1/2)-150, -103,120);
   shape(pink2, 262-move,(y2/2)-150, -90,-103);
   shape(pink3, 303-move,(y3/2)-150, -103,-120);
 
  
} else if (state == "orange main") {
  //insert all code for main sequence with orange fish
   //Set the background image!
    background(watertank); 
    cursor(HAND);
    
     //buttons!
    rectMode (CENTER);
    fill(#FFA512, 100);
    rect(100,600, 100,50);
    rect(100,500, 100, 50);
    rect(100,400, 100, 50);
    rect(100,50,100, 50);
    
    fill(255);
    stroke(255);
    text("FEED", 75,510);
    text("PLAY", 75, 410);
    text("CLEAN", 75,610);
    text("BACK", 75,60);
    
    //rollover
    if (mouseX > 50 && mouseX < 150 && mouseY > 40 && mouseY <80) {
      fill(255,100);
      rect(100, 50, 100, 50);
    } else if (mouseX > 50 && mouseX <150 && mouseY > 350 && mouseY < 450) {
      fill (255,100);
      rect(100,400, 100, 50);
    } else if (mouseX > 50 && mouseX < 150 && mouseY > 450 && mouseY <550) {
      fill (255,100);
      rect(100,500,100,50);
    } else if (mouseX >50 && mouseX < 150 && mouseY > 550 && mouseY < 650) {
      fill (255,100);
      rect(100,600,100,50);    
    }
  
      
  //Create animation
  float y1 = offset + sin(angle) * scalar;
  float y2 = offset + sin(angle + 0.4) * scalar;
  float y3 = offset + sin(angle + 0.8) * scalar;
   
   angle += speed;
   
  //Import the orange fish
    shape(orange1, -2 +move2, y1, 250,300);
    shape(orange2, -120 +move2 ,y2, 250,300);
    shape(orange3, -225 +move2,y3, 250,300);
    
     move2 = move2+2;
    if (move2 > 500) {
      move2= move2-2;}
      
//import the blue fish
    shape(pink1, 300+move,(y1/2), 83,100);
    shape(pink2, 262+move,(y2/2), 70,83);
    shape(pink3, 230+move,(y3/2), 83,100);

    shape(blue1, 486+move,y1/3, 63,80);
    shape(blue2, 462+move,y2/3, 50,63);
    shape(blue3, 438+move,y3/3, 63,80);
    move = move+2;
    if (move>600||move<-600) {
      move=-600;
    }
   
   shape(blue1, 430-move, (y1/3)+150, -83,100);
   shape(blue2, 462-move, (y2/3)+150, -70,-83);
   shape(blue3, 495-move, (y3/3)+150, -83,-100);
   
   shape(pink1, 216-move,(y1/2)-150, -103,120);
   shape(pink2, 262-move,(y2/2)-150, -90,-103);
   shape(pink3, 303-move,(y3/2)-150, -103,-120);

}   else if ( state == "clean") {
    background(255);
}   else if (state == "feed") {
    background(100);
}   else if (state == "play") {
    background(0);
}
}

  
  //mouse and button clicks
  void mousePressed () {
    if (state == "title screen"){
      state = "color select";
    } else if (state == "color select" && mouseX > 150 && mouseX < 250 && mouseY > 380 && mouseY < 420) {
      state = "purple main";
  }   else if (state == "color select" && mouseX > 350 && mouseX < 450 && mouseY > 380 && mouseY < 420) {
      state = "blue main";
  }   else if (state == "color select" && mouseX > 550 && mouseX < 650 && mouseY > 380 && mouseY < 420) {
      state = "orange main";
  }   else if(state == "purple main" && mouseX > 50 && mouseX < 150 && mouseY > 40 && mouseY <80) {
      state = "title screen";
  }  else if(state == "blue main" && mouseX > 50 && mouseX < 150 && mouseY > 40 && mouseY <80) {
     state = "title screen"; 
  }  else if (state == "orange main" && mouseX > 50 && mouseX < 150 && mouseY > 40 && mouseY <80){
     state = "title screen";
  }  else if (state == "purple main" && mouseX >50 && mouseX < 150 && mouseY > 550 && mouseY < 650) {
     state = "clean";
  }  else if (state == "purple main" && mouseX > 50 && mouseX < 150 && mouseY > 450 && mouseY <550) {
     state = "feed"; 
  }  else if (state == "purple main" && mouseX > 50 && mouseX <150 && mouseY > 350 && mouseY < 450) {
     state = "play"; 
  }
  }
  
  