String text1 = "hello, make this a typewriter.";
String text2 = "I am typing more below the first line.";
PFont f;
int counter;
int counter2;

void setup() {
  size(400,400);
  frameRate(5);
  smooth();
  f = createFont("Arial", 16);
  
}

void draw() {
  background(150);
  fill(255);
  typewriteText();
  
 
   
}



///Code from https://forum.processing.org/two/discussion/1823/typewrite-effect-typing-one-by-one-with-delay-on-the-strings
void typewriteText() {
   if(counter < text1.length()){
    counter++;
    text(text1.substring(0, counter), 0, 40, width, height);
   }else if (counter == text1.length()){
     text(text1, 0, 50);  
   }
   
   
   
   if(counter>=text1.length() && counter2 < text2.length()){
    counter2++;
    text(text2.substring(0, counter2), 0, 60, width, height);
   }else if (counter2 == text2.length()) {
     text(text2, 0, 70);
   }
   
   
}