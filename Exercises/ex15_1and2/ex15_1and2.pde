/*ex 15.1 use three variables assigned to random values to 
 create a composition that is different every time the program 
 is run. 
 ex 15.2 Create a composition using a for structure and random() 
 to make a composition of a different density every time the 
 program is run. */

size(300, 300);
colorMode(HSB);
float rnd = random(255); 
float rdm = random(200, 255);
background(rnd, rdm, 200); 
noStroke();


for (int x=20; x<width; x+=random(100)) {
  for (int y=20; y<height; y+=random(100)) {
    ellipse(x, y, 40, 40);
    fill(x,y,200);
  }
}


