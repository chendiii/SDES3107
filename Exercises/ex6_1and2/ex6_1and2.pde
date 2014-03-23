/*Draw a pattern with a for structure. 
Draw a dense pattern with two for structures 
 */ 

size(500,500); 
background(#ABCDEE); 
stroke(255);


for (int y=28; y<height-30; y+=24) {
  for (int x=24;x<width-30;x+=24) {
    line(x,y,x+6,y+6); 
    line(x+16,y,x+10,y+6); 
  }
}
