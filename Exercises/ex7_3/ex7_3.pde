//7.3. Draw a complex curved shape of your own design using 
//bezierVertex()


size(500,500);

smooth();
noFill();
beginShape();
vertex(100,80);
bezierVertex(200,330,100,29,18,30);
bezierVertex(400,450,20,158,9,100);
bezierVertex(200,350,200,180,90,490);
endShape(); 

