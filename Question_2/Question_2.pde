float x, y; 
int theta; 
int orbitRadius = 100; 

void setup(){
  size(600, 600); 
}

void draw(){
  background(0, 100, 200); 
  theta += 5;
 pushMatrix();
 //translate(width/2, height/2); 
    //rotate(radians(theta)); 
  x = cos(radians(theta))*orbitRadius + mouseX; 
  y = sin(radians(theta))*orbitRadius + mouseY;
  
  x++;
  

  ellipse(x, y, 25, 25); 
  popMatrix();
}
