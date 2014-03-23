//15.3 use noise() and noiseSeed() to create the same irregular 
//shape every time a program is run 

size(500, 500);
noiseSeed(0); 
float v = 0.0;
noStroke(); 
fill(230);
background(200,255,200);

for (int x=0;x<width;x+=3) {
  float n = noise(v) * 500.0;
  rect(x, 0, 2, 10 + n);
  v+= 0.1;
}

for (int x=0;x<width;x+=3) {
  float n = noise(v) * 500.0;
  line(x, 0, n, x);
  v+= 0.1;
  stroke(0,100,0);
}
