//Explore a wide range of color combinations within one composition.


size(400, 400); 
noStroke(); 

for (int i=0;i<width;i+=10) {
  for (int m=0;m<height;m+=10) {
    float y=pow(i, 2);
    fill(i, 0, m); 
    rect(i, y, 8, 8);
    rect(i, m, 8, 8);
  }
}


//for (float x=0;x<10;x+=9) {
    //      float y=pow(x, 2);
    //      println("x: "+ x +" y: " +y);
//float newX=map(x, 0, 1, 0, width);
//float newY=map(y, 0, 1, 0, height);
//point(newX, newY);
//fill(col, 0, col2);
//rect(col, col2, 8, 8);      
//  float col=map(x, 0, 1, 0, 255);
//  float col2=map(y, 0, 1, 0, 255);  
//  fill(col, 0, col2);

