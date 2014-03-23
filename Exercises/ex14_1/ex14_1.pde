//ex14.1 create a composition with the data generated using sin(). 


//setup
size(400, 400); 
noStroke();
smooth(); 
colorMode(HSB, 100);
background(random(255), 10, 50); 

//create spiral and set random fill colours 
float radius= 1.0; 
for (int deg=0;deg<360*15; deg+=11) {
  fill(random(255), 10, 150);
  float angle= radians(deg); 
  float x=width/2+(cos(angle)*radius); 
  float y=height/2+(sin(angle)*radius); 
  ellipse(x, y, 14, 14); 
  radius+=0.8;
}

