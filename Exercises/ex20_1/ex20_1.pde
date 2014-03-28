// Make a program run at four frames per second and display the current frame count to 
// the console with println().

void setup() { 
  frameRate(4); 
  colorMode(HSB);
} 

void draw () {
  println(frameCount); 
  
  //draw a circle that changes colour with each frame change
  background(0); 
  ellipse(width/2, height/2, 40, 40);
  float rand = (random(255));
  fill (rand, 255, 255);
}

