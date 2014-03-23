// background flickers if cursor is in lower left part of screen 

void setup()
{
  size(500, 500);
  strokeWeight(10);
  noFill();
}

void draw ()
{
  if ((mouseY<height/2)&&(mouseX<width/2))
  {
    background(#ABCCCC);
  }
  else if ((mouseY>height/2)&&(mouseX>width/2))
  {
    background(230, 100, 0);
  }
    else if ((mouseY>height/2)&&(mouseX<width/2))
  {
    background(230, 240, 0);
  }
      else if ((mouseY<height/2)&&(mouseX>width/2))
  {
    background(10, 240, 255);
  }
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
  rect(5,5,width-10,height-10);
}


