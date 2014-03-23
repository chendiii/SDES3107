//use HSB colour and a FOR structure to design a gradient between 
//two colours. 

void setup() {
  size(500, 500); 
  colorMode(HSB, 360, 100, 100);
  smooth();
}

void draw() { 
  for (int p=0; p< width;p++)
  {
    println(p);
    float newHue = 200-(p *.5);
    stroke(newHue, 70, 80); 
    line(p, 0, p, height);

    // if mouse is at current draw location, then set the circle to this colour
    if (mouseX == p) {
      fill(newHue, 100,100);
    }
  }


  // draws the circle
  if ((mouseX<width)&&(mouseY<height)) { 
    noStroke();
    ellipse(mouseX, mouseY, 100, 100);
  }
}

