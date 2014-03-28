//Animate a shape to react when the mouse is pressed and when it is released

int h = 0 ; 

void setup () { 
  size(400, 400); 
  smooth();
  colorMode(HSB);
  noStroke();
} 

void draw () { 
  translate(200, 200); 
  background(255); 
  fill(0);
  ellipse(0, 0, 300, 300);
  if (mousePressed) {                    // draws a shocked face when mouse is pressed 
    background(150, h, 255);
    h+=10;
    ellipse(0, 0, 300, 300); 
    eye(-50, -50); 
    eye(50, -50);
    fill(255);
    ellipse(0, 60, 50, 50);
  } 
  else {                               // if mouse not pressed the face is sad 
    sadeye(-50, -50); 
    sadeye(50, -50);
    mouth(); 
    fill(0);
    text("Press display", -36, 180);
    h=0;
  }
}     



//FUNCTIONS to create shapes

void sadeye(int x, int y) {           //the Sad eyes function 
  noStroke();
  fill(255); 
  ellipse(x, y, 50, 80); 
  fill(0);
  ellipse(x, y-30, 100, 50);
  fill(0); 
  ellipse(x, y+18, 30, 40);
}

void eye(int x, int y) {             //shocked eyes function 
  noStroke();
  fill(255); 
  ellipse(x, y, 50, 80); 
  fill(0); 
  ellipse(x, y, 35, 45);
} 

void mouth () {                       //Sad mouth function 
  fill(255);
  ellipse(0, 80, 100, 10);
} 

