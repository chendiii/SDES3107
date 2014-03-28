// Write a function to draw a shape to the screen multiple times, each at a 
// different position.


void setup () { 
  size(400, 440);
  frameRate(3);
  colorMode(HSB);
} 

void draw () { 
  for (int i = 10; i <height; i++) {
    background(255);
    float r = random(400);
    fill(r, 220, 240);
    //draws the circle at a random location
    if (mouseY<360){
    shap(r, r);} 
  }

  //marks the point where the x & y feed the dimensions of the circle &print to display
  line(mouseX+3, mouseY+3,mouseX-3, mouseY-3);
  line(mouseX-3, mouseY+3,mouseX+3, mouseY-3);
  fill(0); 
  rect(0, 360, 400, 420);
  fill(255);
  text("hover the mouse over the white",110,380);
  text("X marks where the value of the dimensions of the ellipse is taken",10,400);
  text("width: " + mouseX + "  height: " +mouseY, 145,420);
} 

// Creates a function for the circle 
void shap (float x, float y) { 
  stroke(10);
  ellipse(x, y, mouseX, mouseY);
} 

