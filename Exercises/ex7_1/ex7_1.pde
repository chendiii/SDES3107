
  size(1000, 1000); 
  background(255);
  
  smooth();
  noFill(); 
  stroke(#ABCDEE);


  beginShape(); 
  for (int x=10;x < (width/2);x+= 10)
  {
    for (int y=10;y<(height/2);y+=20)
    {

      vertex(x, y); 
      vertex(width-x, height-y); 
       
    }
  }
  endShape();  


