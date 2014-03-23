/* ex14.2 explore drawing circles and arcs with sin() and cos(). 
 Develop a composition from the result. */


size(600, 400); 
stroke(255);
smooth(); 
background(230); 
noFill(); 

float radius = 1.0;
int n=0;

//draw arc pattern
for (int rtt=0;rtt<360;rtt+=5) {
  float angle=(radians(rtt)); 
  float x=100+(cos(angle)*(radius*2)); 
  float y=100+(sin(angle)*(radius/2)); 

  arc(10, 10, 10+x, 50+y, 0, HALF_PI);
  radius+=10;
  n+=1;
  //draw ellipse
  ellipse(x*2.5, y*1.5, n, n);
}

