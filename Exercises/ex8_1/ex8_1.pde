


for (float x = 0; x < 1; x+=0.001) 

{
 float y = 1-pow(4,x);
 println("x: "+x+ " y: "+y);
 
 point(map(x,0,1,0,100),map(y,0,-1,0,100));
  
}
