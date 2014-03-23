// Exercise 2 - 1,2&3 
//Create a compostion with one line and one ellipse 
//Change the stroke, fill and background 
//Create a visual knot with Bezier curves 

size(500,500); 
stroke(300,100,400); 
fill(255,0,110); 
smooth();
background(100,300,300);

ellipse(80,200,40,50); 
line(100,200,430,430); 
triangle(430,430,445,400,450,450);

bezier(300,50,100,200,150,50,300,100);



