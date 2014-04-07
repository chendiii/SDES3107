/*Create an array to store the y-coordinates of a sequence 
 of shapes. Draw each shape inside draw() and use the 
 values from the array to set the y-coordinate of each. */

int xcoord = 0; 
int [] coordinates = new int [6]; 

void setup () { 
  size(500, 500); 

  coordinates[0] = 230;
  coordinates[1] = 268;
  coordinates[2] = 453;
  coordinates[3] = 192;
  coordinates[4] = 349;
  coordinates[5] = 394;
} 

void draw () { 
  xcoord+=50;
  for (int i=0; i<6; i++) {
    rect(xcoord, coordinates[i], 40, 40);
    println(coordinates[i]);
    println(i);
  }
}

