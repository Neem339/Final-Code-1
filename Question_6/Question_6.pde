ArrayList <Particle> myParticle;
  int opacity = 255; 
void setup(){
  size(600, 600); 
    myParticle = new ArrayList<Particle>();
  //myParticle = new Particle(width/2, height/2); 
}

void draw(){
  background(0); 
  
    for(int i = 0; i<myParticle.size(); i++){
      Particle p = myParticle.get(i);
      p.display();
      p.move();
      p.bounce();
      
      if(p.dead()==true){
       myParticle.remove(i); 
      }
      
    //  if(p.pos.y< 0){
    // myParticle.remove(i); 
    //}
  //myParticle.move();
  //myParticle.bounce(); 
  //myParticle.display(); 
  
  //to check to see if a particle is still alive, can use .dead() method
  //println(myParticle.dead()); 
}
if(myParticle.size() <= 10){
   if(frameCount % 30 == 0){
  myParticle.add(new Particle(width/2,height/2));
   }
  

 
  }
}
