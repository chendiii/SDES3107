//Create a composition that scales proportionally with different window sizes. 
// Put different values into size() to test.

//Make a few int and float variables. Try assigning them in different ways. Write the 
// values to the console with println().


size(600,500); 

int x = width/2;
int y = height/2;

//Draw relative (to window) scaled rectangle in centre of window 
rect(x/2,y/2,x,y); 

//Write values to console 
println("Size:");
print(x);
print(" by ");
println(y); 
println("Start drawing position:");
print(x/2);
print(" and ");
println(y/2);


