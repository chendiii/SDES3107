//Write a program to update the display window only when a key is pressed.

int f = 0;

void setup () { 
  size(200, 140); 
  smooth();
  frameRate(15);
} 

void draw () { 
  background(0);
  text("Type to update framecount.",20,40); 
  text ("Framecount: " + f, 20, 60); 
  text(key,20,80);
  if (keyPressed) { 
    f=frameCount;
  }
}

