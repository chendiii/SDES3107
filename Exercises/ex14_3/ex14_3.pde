//ex14.3 generate a series of spirals and organise 
//then into a composition. 

size(450, 500); 
noFill();
stroke(140, 255, 200);
background(50, 150, 255);

//arc icon
for (int i=0;i<160;i+=10) { 
  float begin = radians (i);
  float end = begin + HALF_PI;
  
//draw the arcs into a repeating pattern   
  for (int pos=100; pos<500;pos+=100) {
    for (int y=100;y<500;y+=100) {
      arc(pos, y, i+2, i+20, begin/2, end);
    }
  }
}

