//Invent three unique shapes that behave differently in relation to the mouse. Each 
// shape’s behavior should change when the mouse is pressed. Relate the form of 
// each shape to its behavior.

void setup() { 
  size(600, 600); 
  smooth();
} 

void draw () { 
  float mx=mouseX;
  float my=mouseY;

  //creates a trail by changing the transparency 
  if (mousePressed==false) { 
    fill(255, 10);
    noStroke(); 
    rect(0, 0, width, height);
  } 

  //draws the circle at mouse position, size depending mouse position 
  stroke(0);
  strokeWeight(mx/15);
  fill(255, 230);
  ellipse(mx, my, mx/2, my);

  //draws a circle over the other 
  if (mx*my>height*100) { 
    internal(mx, my);
  }
}

void internal(float x, float y) { 
  if (mousePressed) {
    noStroke (); 
    fill(150, 100);
  } 
  ellipse(x, y, mouseY*2, mouseX/3);
} 


