//24.3 Load an image and use it as a drawing tool. 

PImage face, tash;
int mX, mY;


void setup () { 
  size(280, 280);
  println("Drag moustache onto Josh's face");
}

void draw () { 
  face = loadImage("josh.jpg");
  image(face, 0, 0);
  tash = loadImage("tash2.png"); 

  if (mousePressed) { //when mouse pressed, moves the moustache with the mouse
    mX = mouseX-55;
    mY = mouseY-20;
    image(tash, mX, mY);
  }
  else {             // when you let go, tash will remain at a last pressed position 
    image(tash, mX, mY);
  }
}

//((keyPressed == true) && (key == 'p'))
//((mouseX<width)&&(mouseY<height)) 

