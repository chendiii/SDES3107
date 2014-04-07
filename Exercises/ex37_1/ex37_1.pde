//Change the visual attributes of a word as the cursor moves across the display window.


void setup() { 
  size(500, 300);
  smooth();
  colorMode(HSB);
} 

void draw () { 
  background(255); 
  fill(mouseX/2, 255, 255); 
  PFont fo = loadFont("DialogInput-60.vlw"); 
  textFont(fo); 
  
  text("PROCESSING", 20, 200);
}

