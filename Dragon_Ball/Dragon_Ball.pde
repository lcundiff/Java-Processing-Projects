// An array of 8 dragonBalls objects
dragonBalls[] dragon = new dragonBalls[6];
float temp = 1; 
void setup() {
  size(480, 270);
  
  // The dragonBalls objects are initialized using the counter variable
  for (int i = 0; i < dragon.length; i++ ) {
    temp = random(1,60); 
    temp = temp * -1; 
    dragon[i] = new dragonBalls(width/10 + i*random(0,10),23, temp*random(1,5)); 
  }
}

float scale = 50; 
float t = 0; 
void draw() {
  background(0);
  scale+=1; 
  // Drawing the glow
  pushMatrix();
  translate(width/2,height/2);
  fill(random(100,255), random(20, 255),random(200), random(150,255));
  noStroke();
  beginShape();
  
  for(float theta = 0; theta <=(2*PI); theta += 0.01){
      float radian = sinusoid(theta, 7, 1, (sin(t)), (cos(t)) ); 
      
      float x = radian * cos(theta) * scale; 
      float y = radian * sin(theta) * 30; 
      
      //fill(random(100,255), random(20, 255),random(200), random(150,255));
      fill(#FAFF00); 
      vertex(x,y);
  }
  endShape();
  filter(BLUR, 5);
  //ellipse(0,0,64,64);
  // Drawing all dragonBalls
  
  
  for (int i = 0; i < dragon.length; i+=1 ) {
    dragon[i].update();
    dragon[i].display();
  }
  popMatrix();
  
  t+=0.1 ; 
}

float sinusoid(float theta, float m, float n1, float n2, float n3 ) {
  
  return pow(pow(abs(cos( (m * theta))/n1), n2) +  pow(abs(sin(m * theta)/n1), n3), -1 / n1) ;
  //Creates method that takes in the variables (amplitude, frequency, time, etc) and creates complex sinusoid
  //Received help from my signals TA to help create equation
}     