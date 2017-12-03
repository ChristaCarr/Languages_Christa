PFont f;

//Variable to store text currently being typed
String typing = "";
//Variable to store saved text when return is hit
String saved = "";
String saved2 = "";
String saved3 = "";

void setup() {
 size(300,300);
 f= createFont("Arial", 16);
  
}

void draw() {
 background(255);
 int indent = 25;
 
 //Set the font and fill for text
 textFont(f);
 fill(0);
 
 //Display everything 
 text("Click in to type your intials. \nHit return to save your score.", indent, 40);
 text(typing, indent, 90);
 text(saved, indent, 130);
 text(saved2, indent, 140);
 text(saved3, indent, 150);
}

void keyPressed() {
  //If the return key is pressed, save the String and clear it
  if(key =='\n'){
    saved = typing;
    typing = "";
    
    
//Otherwise, concatenate te string

  }else{
    typing = typing + key;
  }
}