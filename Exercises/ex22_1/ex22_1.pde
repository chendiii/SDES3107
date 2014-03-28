//Write your own function to draw a parameterized arch. 


float i = 0 ; //change the float i value to change the curve 

void setup() { 
  size(300, 300); 
  smooth(); 
  noFill();
  strokeWeight(5);
  background(0);
  stroke(255);
} 

void draw () { 
  background(0); 
  i = (key*2); //sets arch curve to i 
  arch(i); //calls arch function
  
  //text to display
  text("press any key to change the curve",20,250);
  text("try shift,  numbers, letters & return key",20,270);
  text("i value: " +i,20,290);
  text(key,150,150);
} 



void arch(float curv) { //function to draw the curve 
  float y= 250.0;
  beginShape(); 
  vertex(15.0, y);
  bezierVertex(15.0, y-curv, 30.0, 50.0, 100.0, 50.0); 
  bezierVertex(200.0, 50.0, 200.0, y-curv, 285.0, y);
  endShape();
} 

