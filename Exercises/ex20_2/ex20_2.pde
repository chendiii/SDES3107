//Move a shape from left to right across the screen. When it moves off the right edge, 
// return it to the left.

void setup () { 
  size(300, 100); 
  noFill(); 
  stroke(5); 
  frameRate(100);
} 


void draw () { 
  for (int i=0; i<width; i+=10) {
    background(255);
    ellipse(frameCount, height/2, 30, 30);
    println(frameCount);
  }
  if (frameCount>width) { 
    for (int k=0; k<width; k+=10) {
      background(240);
      ellipse(width-(frameCount-width), height/2, 30, 30);
    }
  }
}

