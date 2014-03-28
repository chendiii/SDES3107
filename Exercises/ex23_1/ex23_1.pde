//Control the position of a shape with the mouse. Strive to create a more interesting 
// relation than one directly mimicking the position of the cursor

void setup() {
  size(300, 300); 
  frameRate(20);
  colorMode(HSB); 
  strokeWeight(20);
}

void draw () { 


  if ((mouseX<width)&&(mouseY<height)) { //if mouse on display, move square 
    background(0); 
    int r= int(random(125));             //integer for colour 
    rect(mouseX-25, mouseY-25, 50, 50);  //draw square at mouse
    if (mousePressed) {                  //if mouse pressed change colour of square and stroke
      fill(r, 200, 255);
      stroke(r*2, 200, 255);
    }
  }

  text("Hover to move", 20, 20);
  text("Drag to change the colour", 20, 40);
} 

