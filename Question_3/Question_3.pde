int num = 25; 
float xPos [] = new float[num]; 
int size = 20; 
float theta;

int waveOffset = height+50 ; 

void setup(){
  size(500, 500); 
  
  int spacing = width/num; 
  
  for(int i = 0; i<num; i++){
    xPos[i] = i*spacing + size/2; 
  }
}

void draw(){
  background(100); 
  
 
  for(int i = 0; i<num; i++){
    ellipse(xPos[i], 100 + sin(theta + i*.2)*height/2+waveOffset, size, size );  
  }
  
  theta += .01; 
}
