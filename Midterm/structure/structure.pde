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

//Feed Variables
float foodfall = -50;
float fooddrift = random(490,510);

//Play Mode Variables
float x;
float fishX = mouseX; 
float fishY = 450; //height of fish png should = 350px
float y = -70;

//variables for our timer
int timer1= 10000; //10 second timer
int timer2= 35000; //35 second timer
int currentTime=0;
int savedTime=0;

PImage watertank;
PImage colorselectionbg;
PImage titlepage;
PImage instructionsbg;
PImage pixelbg;
PImage pixelcoin;
PImage pixelblue;
PImage pixelorange;
PImage pixelpink;
PImage finishgamebg;
PImage gameoverbg;
PImage algaeoverlay;

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

//creating ball bounce function
void ballbounce () {
background(pixelbg);
fill(0);
image (pixelcoin,x , y, 75, 75);

//movement of ball
if (y <= fishY) {
  y=y+6;
}else if (x >= (mouseX - 75) && x <= (mouseX+ 75)) {
  y=y*-1;
}else {
  y=y+6;
}

// random ball drop
if (y <= -70) {
  x = random(50,750);
}
// if you miss one it's game over
if ( y >= 750) {
state = "game over";
}  
// After 30 seconds the game is done
if (currentTime>timer2) {
  state = "finish game";
  
}
}


//creating food function
void feed (int x, int y) {
 fill( #D18F26, 255);
  if ( foodfall >= 450) {
  fill(#D18F26, 0);
 }else if (foodfall >=425) {
  fill(#D18F26, 100); 
 }else if (foodfall >= 400) {
  fill (#D18F26, 200); 
 } 
 
 if (foodfall>450) {
  foodfall = foodfall*-1;
 }
 float fooddrift = random(497,503);
 ellipse (fooddrift+x,foodfall+y,30,30); 
 foodfall= foodfall +1;
 }


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
  algaeoverlay = loadImage ("algae overlay.png");
  tint(255, 255);
  image(algaeoverlay,0,0,800,800);
  colorselectionbg = loadImage ("colorselectionbg.png");
  finishgamebg = loadImage ("finishgamebg.png");
  gameoverbg = loadImage ("gameoverbg.png");
  instructionsbg = loadImage ("instructionsbg.png");
  pixelbg = loadImage ("pixelbg.png");
  pixelblue = loadImage ("pixelblue.png");
  pixelcoin = loadImage ("pixelcoin.png");
  pixelorange = loadImage ("pixelorange.png");
  pixelpink = loadImage ("pixelpink.png");
  titlepage = loadImage ("titlepage.png");
  font = createFont ("backlash.ttf", 60);
  textFont(font);
  textSize (25);
  
  shapeMode(CENTER); 
}


void draw () {
  if (state== "title screen") {
    cursor(HAND);
    background(titlepage);
    fill(255);
    
  }else if (state == "color select") {
    background(colorselectionbg);
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
    
    //algae effect?
    
    
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
    
    //food drop 
    if (state == "purple main" && mouseX > 50 && mouseX < 150 && mouseY > 450 && mouseY <550 && mousePressed == true) {
     fill(#D18F26);
     feed (50,0);
     feed (-50, -25);
     feed (0, -70);
     }
     //feed purple fish
    
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
  
    //food drop 
    if (state == "blue main" && mouseX > 50 && mouseX < 150 && mouseY > 450 && mouseY <550 && mousePressed == true) {
     fill(#D18F26);
     feed (50,0);
     feed (-50, -25);
     feed (0, -70);
     }
     //feed blue fish
    
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
  
    //food drop 
    if (state == "orange main" && mouseX > 50 && mouseX < 150 && mouseY > 450 && mouseY <550 && mousePressed == true) {
     fill(#D18F26);
     feed (50,0);
     feed (-50, -25);
     feed (0, -70);
     }
     //feed purple fish
      
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

}  

  else if ( state == "purple instructions") {
  //Add bg image with instructions
  background(instructionsbg);
}   

   else if (state == "blue instructions") {
  //Add bg image with instructions
  background(instructionsbg);
}   

   else if (state == "orange instructions") {
  //Add bg image with instructions
  background(instructionsbg);
}

    else if (state == "play purple") {
    background(pixelbg);
    currentTime = millis();
    noCursor();
    ballbounce();
    image(pixelpink,mouseX,450,149,351); //fish placeholder    
}   
    else if (state == "play orange") {
    background(pixelbg);
    currentTime = millis();
    noCursor();
    ballbounce();
    image(pixelorange,mouseX,450, 149,351); //fish placeholder
}   
    else if (state == "play blue") {
    background(pixelbg);
    currentTime = millis();
    noCursor();
    ballbounce();
    image(pixelblue,mouseX,450, 149,351); //fish placeholder
}

  else if (state == "game over") {
  background (gameoverbg);
  cursor(HAND);
} 

  else if (state == "finish game") {
  background (finishgamebg);
  cursor(HAND);
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
     background (watertank); //clean purple fish by refreshing bg
  }  else if (state == "purple main" && mouseX > 50 && mouseX <150 && mouseY > 350 && mouseY < 450) {
     state = "purple instructions"; //play purple fish
  }  else if (state == "blue main" && mouseX > 50 && mouseX <150 && mouseY > 350 && mouseY < 450) {
     state = "blue instructions";  //play blue fish 
  }  else if (state == "blue main"  && mouseX >50 && mouseX < 150 && mouseY > 550 && mouseY < 650) {
     background (watertank); //clean blue fish tank
  }  else if (state == "orange main" && mouseX > 50 && mouseX <150 && mouseY > 350 && mouseY < 450) {
     state = "orange instructions";  //play orange fish 
  }  else if (state == "orange main" && mouseX >50 && mouseX < 150 && mouseY > 550 && mouseY < 650) {
     background (watertank); //clean orange fish tank
  }  else if (state == "purple instructions") {
     state = "play purple";
  }  else if (state == "blue instructions") {
     state = "play blue";
  }  else if (state == "orange instructions") {
     state = "play orange";
  }  else if (state == "finish game" || state == "game over") {
     state = "title screen";
  }     
  }
  
 