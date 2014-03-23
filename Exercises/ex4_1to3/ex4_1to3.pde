//4.1 use one variable to set the position and size for three ellipses
//4.2 use multiplication to create a series with increasing space between 
//4.3 explore the function for min and max 

size(1000, 150); 

int x=10;
stroke(200,100,200);
strokeWeight(2);
smooth();


ellipse (x, x, x, x); 
ellipse (x*2, x*2, x*2, x*2);  
ellipse (x*3, x*3, x*3, x*3);  

for (float i=.0001; i<width; i*=1.1) 
{
  line(i, 50, i, height);
  println(i);
}

int w=min(50,90); 
int m=max(100,100);
line (w,w,m,m);

