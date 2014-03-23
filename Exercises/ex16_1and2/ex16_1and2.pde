/*16.1 use rotate() 
 16.2 use scale() with a for structure */

size(200, 200);
noStroke();
background(0);

//rotate a rectangle
rect(50, 50, 30, 30); 
rotate(PI/8); 
rect(50, 50, 30, 30); 

// scale down a circle
for (int i=150; i<600;i+=10) {
  fill(i, 200, 200);
  arc(i, 80, 30, 30, 0, 10);
  scale(0.9);
}

