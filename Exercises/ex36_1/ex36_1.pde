//Select a noun and an adjective. Animate the noun to reveal the adjective

int y = 0 ; 

void setup () { 
  size(500, 500); 
} 

void draw () { 
  if (mousePressed) { 
    background(0); 
    PFont revealed = loadFont("Bauhaus93-20.vlw");
    textFont(revealed); 
    text("release", 190, 178);
    y++;
  } 
  else { 
    background(0); 

    y= 200;
  }  

  PFont reveal = loadFont("Bauhaus93-100.vlw");
  textFont(reveal); 
  text("click", 30, y);
} 

