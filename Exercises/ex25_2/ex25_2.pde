//Create a typing program to display a different image for each letter on the keyboard.
int d = 0 ; 
int f=0; 
int e=20; 

void setup () { 
  size (300, 300); 
  smooth ();
  colorMode(HSB);
} 

void draw () { 
  if (keyPressed == true ) { 
    // background(0); 
    ellipse(key+80, key-50, key, key-47);
    picture1(key, key, key, key);
    fill(key/2, 255, 255);
  }
}

void picture1(float x, float y, float s, float b) { 
  for (int a = 10; a< 40; a+=10) {
    stroke(0); 
    ellipse(x+a+20, y+a+10, (s-60)+a, (b-50)+a);
    ellipse(x-2*a, y-2*a, (s-30)+a, b-50+a);
  }
  if (keyPressed) {
    text(key, d, e);
    d += 10;
  } 
  if (d>width) { 
    d = 0; 
    e+=20;
  }
  if (e>height) {
    e=10;
  }
}

