int numFrames = 12; // The number of animation frames

int frame = 0; // The frame to display

PImage[] images = new PImage[numFrames]; //Image array

int x=0;

void setup() {
  size(500, 100);
  background(255);
  frameRate(30); // Maximum 30 frames per second 
  images[0] = loadImage("ani-000.jpg");
  images[1] = loadImage("ani-001.jpg"); 
  images[2] = loadImage("ani-002.jpg"); 
  images[3] = loadImage("ani-003.jpg"); 
  images[4] = loadImage("ani-004.jpg"); 
  images[5] = loadImage("ani-005.jpg"); 
  images[6] = loadImage("ani-006.jpg"); 
  images[7] = loadImage("ani-007.jpg"); 
  images[8] = loadImage("ani-008.jpg"); 
  images[9] = loadImage("ani-009.jpg"); 
  images[10] = loadImage("ani-010.jpg"); 
  images[11] = loadImage("ani-011.jpg");
}

void draw() {
  frame++;
  if (frame == numFrames) {
    frame = 0;
  }
  if (x>width) { 
    x= -30;
  } 
  image(images[frame], x, 0);
  x+=4;


}

