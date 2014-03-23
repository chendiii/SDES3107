//write font to screen 

size(550,600); 
background(0); 
fill(255);


PFont myFont; 
myFont = loadFont("Calibri-48.vlw"); 
textFont(myFont); 
text("elephant:",100,130); 

PFont nextFont; 
nextFont = loadFont("Cambria-25.vlw"); 
textFont(nextFont); 
text("elephants are my favorite word",100,200); 

PFont cybele; 
cybele = loadFont("Futura-Medium-18.vlw"); 
textFont(cybele); 
text("cybele: guess what i did today!",100,400); 

PFont richenda; 
richenda = loadFont("Gulim-18.vlw"); 
textFont(richenda); 
text("richenda: elephant.",100,425); 

textFont(cybele); 
text("cybele: ... elephant?",100,450); 

textFont(richenda); 
text("richenda: elephant.",100,475); 
