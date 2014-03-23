//Use the data from the curve y=x8 to draw something unique.

size(500, 500); 
background(255);
noStroke();

for (float x=0;x<4.5;x=x+.1)
{
  float y=pow(x, 8);
  float k=y/1000000;
  println("x: "+x+ " y: "+y+ " k: "+k);

  float newX=map(x, 2, 10, 5, 1500);
  float newY=map(y, 0, 10000, 70, 90);

  fill(newX, k, newY);
  ellipse(newX, newY, 20, 20);
  ellipse(width-newX, height-newY, 20, 20);
}

