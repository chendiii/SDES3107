//Use the number keys on the keyboard to modify the movement of a line.

float x=0; 

void setup () { 
  size (1000, 200); 
  background(0); 
  stroke(255);
  frameRate(30);
  strokeWeight(5);
} 

void draw () 
{ 
  //moves a line from left to right on the screen & returns to left when at right
  background(0);
  x++; 
  if (x>width) 
  { 
    x=0;
  } 
  
  // makes the line go backwards and reverse speed depending on the number pressed.
  // ZERO = pause, 1 = slow reverse to 9 quick reverse
  if ((keyPressed)&&(key>= 48.0)&&(key<=57.0)) {
    x-=key-47;
    print("reverse speed # "); 
    println(key-48);
  }
  line(x, 10, x, height-10); //draws the line 
}

