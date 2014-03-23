//draws cicles on mouse press

void setup()
{
size(500,500); 

stroke(0); 
fill(#AAAAAA);
}

          void draw ()
          {
            background(200,50,0); 
            if ((mousePressed == true) &&(mouseY>(height/10))&&(mouseX>(width/10))&&(mouseY<(height-height/10))&&(mouseX<(width-width/10)))
            {
            rect(mouseX,mouseY,30,33);
            println("Mouse Y = " +mouseY); 
            }
            else
            {
              noFill();
              rect(width/10,height/10,(width-100),(height-100));
            }
      

          }
 
