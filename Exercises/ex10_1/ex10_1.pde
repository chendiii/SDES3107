// EX10.1 Draw two images to the display. 

size(500,450);

PImage img; 
img = loadImage("frame3.jpg"); 
image(img,0,0);


PImage im2; 
im2 = loadImage("display.jpg"); 
image(im2,100,85);

