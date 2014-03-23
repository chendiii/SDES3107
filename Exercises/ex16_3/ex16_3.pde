//ex16.3 combine translate and rotate to rotate a shape around it's 
//own centre. 

size(200, 200); 
background(140); 
noStroke(); 

//set zero point to center 
translate(width/2, height/2);
  
//rotate around center
for (int i=0; i<255; i+=20) {
  fill(180,i,255);
  ellipse(0, 0, 120, 10); 
  rotate(PI/12);
  
}

