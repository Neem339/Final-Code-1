PVector pos, vel, accel; 
PVector gravity; 
void setup(){
  size(600, 600); 

  pos = new PVector(width/2, 25);  
  vel = new PVector(0, 0); 
  gravity = new PVector(0, 0.2); 

  smooth(); 
}

void draw(){
  background(0); 

  ellipse(pos.x, pos.y, 50, 50); 
  pos.y+=5;
   pos.add(vel); 
      vel.add(gravity);
    
  if(pos.y >= height){
    pos.y = 0;
    vel.y = 0;
     pos.add(vel); 
      vel.add(gravity);

  }
}
