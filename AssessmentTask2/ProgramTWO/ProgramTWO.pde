// P_4_3_3_02.pde
// 
// This program has been changed from a video input that changes it's stroke wieght depending 
// on the hue value, saturation and brightness. To a program that produces different filters and artworks depending on 
// brightness and hue value. 

/**
 * generating a drawing with 4 different modes by analysing live video
 * 
 * KEYS
 * 4 - 5 - 6 - 7       : DRAWING MODES >>>> RICHENDA'S INPUT 
 * q                   : stop drawing
 * w                   : continue drawing
 * s                   : save png
 * r                   : start record pdf
 * e                   : end record pdf
 *
 */

import processing.pdf.*;
import processing.video.*;
import java.util.Calendar;

boolean savePDF = false;

Capture video;

int pixelIndex;
color c;

float x1, x2, x3, y1, y2, y3;
float pointX = 0; 
float pointY = 0;

int counter;
int maxCounter = 100000;

void setup() {
  size(1280, 820);
  video = new Capture(this, width, height, 30);
  video.start();
  x1 = 0;
  y1 = height/2;
  x2 = width/2;
  y2 = 0;
  x3 = width;
  y3 = height/2;
  background(255);
}

void draw() {


  colorMode(HSB, 360, 100, 100);
  smooth();
  // get actual web cam image
  if (video.available()) video.read();
  video.loadPixels();

  if (key =='5') {                       //creates circles from video brightness input
    for (int i=0;i<width;i+=20) {
      for (int j=0;j<height;j+=20) {
        c=(video.get(i, j));
        noStroke();
        float bright= brightness (c);
        float sizeC = bright*0.3;
        fill(c/2, bright);
        ellipse(i, j, sizeC, sizeC);
        println(sizeC);
      }
    }
  }
  if (key == '6') {                   //creates rectangles and fills based of hue and brightness of video
    for (int i=0;i<width;i+=10) {
      for (int j=0;j<height;j+=10) {
        c=(video.get(i, j));
        stroke(c);
        float bright= brightness (c);
        float hueValue = hue(c); 
        fill(c/3, bright);
        rect(i, j, hueValue*2, hueValue*2);
        println(hueValue);
      }
    }
  }
  if (key =='7') {                    // creates patterns based on brightness with ampersands and stars
    for (int i=0;i<width;i+=15) {
      for (int j=0;j<height;j+=15) {
        c=(video.get(i, j));

        float bright= brightness (c);
        float maxBright = 100; 
        float hueValue = hue(c);
        stroke(c, bright);
        fill(c, bright);
        if (bright>maxBright/2) {
          text('&', i, j);
        } 

        else { 
          text('*', i, j);
        } 

        println(bright);
      }
    }
  }

                                    // this is similar to the original program, I changed stroke and added fill
  if (key == '4') {                // uses the 'dumb agent' to draw random shapes from video data  
    // first line
    pixelIndex = (int) ((video.width-1-int(x1)) + int(y1)*video.width);
    c = video.pixels[pixelIndex];
    // float hueValue = hue(c);
    // float saturationValue = saturation(c);
    float brightnessValue = brightness(c);
    stroke(c);
    fill(c, brightnessValue);

    beginShape();
    vertex(x1, y1);
    vertex(x1, y1);
    for (int i = 0; i < 7; i++) {
      pointX = constrain(x1+random(-50, 50), 0, width-1);
      pointY = constrain(y1+random(-50, 50), 0, height-1);
      vertex(pointX, pointY);
    }
    vertex(pointX, pointY);
    endShape();
    x1 = pointX;
    y1 = pointY;


    // second line
    pixelIndex = (int) ((video.width-1-int(x2)) + int(y2)*video.width);
    c = video.pixels[pixelIndex];
    stroke(c);
    fill(c, brightnessValue);

    beginShape();
    vertex(x2, y2);
    vertex(x2, y2);
    for (int i = 0; i < 7; i++) {
      pointX = constrain(x2+random(-50, 50), 0, width-1);
      pointY = constrain(y2+random(-50, 50), 0, height-1);
      vertex(pointX, pointY);
    }
    vertex(pointX, pointY);
    endShape();
    x2 = pointX;
    y2 = pointY;


    // third line
    pixelIndex = (int) ((video.width-1-int(x3)) + int(y3)*video.width);
    c = video.pixels[pixelIndex];

    strokeWeight(brightnessValue/100);
    stroke(c);
    fill(c, brightnessValue);

    beginShape();
    vertex(x3, y3);
    vertex(x3, y3);
    for (int i = 0; i < 7; i++) {
      pointX = constrain(x3+random(-50, 50), 0, width-1);
      pointY = constrain(y3+random(-50, 50), 0, height-1);
      vertex(pointX, pointY);
    }
    vertex(pointX, pointY);
    endShape();
    x3 = pointX;
    y3 = pointY;
  }

  counter++;
  if (counter>=maxCounter) noLoop();
}

void keyPressed() {
  switch(key) {
  case BACKSPACE:
    background(360);
    break;
  }
}

void keyReleased() {
  if (key == 's') {  
    saveFrame(timestamp()+"_##.png");
  }
  if (key == 'r') {  
    background(360);
    beginRecord(PDF, timestamp()+".pdf");
  }
  if (key == 'e') {  
    endRecord();
  }
  if (key == 'q') {  
    noLoop();
  }
  if (key == 'w') {  
    loop();
  }
}

// timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}



// Generative Gestaltung, ISBN: 978-3-87439-759-9
// First Edition, Hermann Schmidt, Mainz, 2009
// Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
// Copyright 2009 Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
//
// http://www.generative-gestaltung.de
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


