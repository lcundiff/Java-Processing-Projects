class dragonBalls {
  // Each dragon balls object keeps track of its own angle of rotation.
  float theta;      // Rotation around sun
  float dia;   // Size of dragon balls
  float dist;   
  float speed; // speed
  float pos; 
    dragonBalls(float distance, float diameter, float position) { //dragon ball object
    dist = distance;
    dia = diameter;
    pos = position; 
    theta = 0;
    speed = random(0.02, 0.04);
    map(speed, 0.01, 0.04, 1, 15); 
  }
  
  void update() {
    // Increment the angle to rotate
    if(theta>0.05){
      theta = 0.02; 
    }
    theta += speed + speed*sin(theta); // set speed to theta
    speed = theta; 
  }
  
  void display() {
    // Before rotation and translation, the state of the matrix is saved with pushMatrix().
    pushMatrix(); 
    // Rotate orbit
    rotate(theta); 
    // Translate out distance
    translate(dist, 0); 
    
    stroke(1); 
    fill(#FFBD05);
    ellipse(pos, pos, dia, dia);
   
    // Once the dragon balls is drawn, the matrix is restored with popMatrix() so that the next dragon balls is not affected.

    popMatrix();
  }
}