//Load an image and use mouseX and mouseY to read the value of the pixel beneath 
// the cursor. Use this value to change some aspect of the image

PImage face; 

color pick; 

void setup () { 
  size(720, 1000);
  frameRate(100);
} 

void draw () { 
  face = loadImage("face.jpg"); 
  image(face, 0, 0, width, height);
  pick = get(mouseX, mouseY); 
  fill(pick); 
  ellipse(mouseX, mouseY, 30, 30); 
  if (mousePressed) {
    tint(pick);
  }
  else { 
    tint (255);
  }
}

