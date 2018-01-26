//LOGAN CUNDIFF HOMEWORK 4
//My code is to create a pattern of the four elements listed in the show 
//Avatar the Last Airbender in a continous pattern. I am a fan of the show
//I created each pattern uniquely, but overall using the push and pull matrix feature
//Air took the longest as it is three shapes in one and had to be grouped together 
//enjoy!

void setup(){
  
size(500,500); //sets size

for(int i = 0; i<=500; i+=60){
stroke(0); 
strokeWeight(0.5); 
line(width-i, 0, width - i, height);   
line(0, height - i, width, height-i); //generates the line grid for pattern

//FIRE
pushMatrix(); 
translate(-150, -30); 
stroke(0);  
fill(222, 50, 70); 
beginShape();
vertex(width-i+23,height-i+20);
bezierVertex(width-i+10,height-i+30,  width-i-10,height-i+30,   width-i-24,height-i+20) ;//bottom curve
bezierVertex(width-i-33,height-i-30,  width-i-15,height-i-47,  width-i-9,height-i+10) ;
bezierVertex(width-i+7,height-i-70,     width-i+9,height-i+70,  width-i+15,height-i-28) ;
bezierVertex( width-i+30,height-i-23,  width-i+30,height-i,  width-i+23,height-i+20) ;
endShape(); 
strokeWeight(1); 
popMatrix(); 

//FIRE 2
pushMatrix(); 
translate(90, -30); 
stroke(0);  
fill(222, 50, 70); 
beginShape();
vertex(width-i+23,height-i+20);
bezierVertex(width-i+10,height-i+30,  width-i-10,height-i+30,   width-i-24,height-i+20) ;//bottom curve
bezierVertex(width-i-33,height-i-30,  width-i-15,height-i-47,  width-i-9,height-i+10) ;
bezierVertex(width-i+7,height-i-70,     width-i+9,height-i+70,  width-i+15,height-i-28) ;
bezierVertex( width-i+30,height-i-23,  width-i+30,height-i,  width-i+23,height-i+20) ;
endShape(); 
strokeWeight(1); 
popMatrix(); 

//FIRE 3
pushMatrix(); 
translate(210, -150); 
stroke(0);  
fill(222, 50, 70); 
beginShape();
vertex(width-i+23,height-i+20);
bezierVertex(width-i+10,height-i+30,  width-i-10,height-i+30,   width-i-24,height-i+20) ;//bottom curve
bezierVertex(width-i-33,height-i-30,  width-i-15,height-i-47,  width-i-9,height-i+10) ;
bezierVertex(width-i+7,height-i-70,     width-i+9,height-i+70,  width-i+15,height-i-28) ;
bezierVertex( width-i+30,height-i-23,  width-i+30,height-i,  width-i+23,height-i+20) ;
endShape();  
strokeWeight(1); 
popMatrix(); 

//FIRE 4
pushMatrix(); 
translate(-210, 150); 
stroke(0);  
fill(222, 50, 70); 
beginShape();
vertex(width-i+23,height-i+20);
bezierVertex(width-i+10,height-i+30,  width-i-10,height-i+30,   width-i-24,height-i+20) ;//bottom curve
bezierVertex(width-i-33,height-i-30,  width-i-15,height-i-47,  width-i-9,height-i+10) ;
bezierVertex(width-i+7,height-i-70,     width-i+9,height-i+70,  width-i+15,height-i-28) ;
bezierVertex( width-i+30,height-i-23,  width-i+30,height-i,  width-i+23,height-i+20) ;
endShape(); 
strokeWeight(1); 
popMatrix(); 

//////////////////////////////////////////////////////////////////////////////////////////

//WATER 1
pushMatrix(); 
translate(-30, -30); 
stroke(0);  
fill(70, 100, 160); 
ellipse(width-i, height-i,52,52); 
strokeWeight(1); 
bezier(width-i-23,  height-i-10, width-i-6, height-i-20, width-i+6, height-i-2, width-i+25, height - i-2); //first squiggly line 
bezier(width-i-26,  height-i, width-i-3, height-i-9, width-i+6, height-i+8, width-i+24, height - i+10); //second squiggly line
bezier(width-i-23,  height-i+10, width-i-6, height-i+3, width-i+6, height-i+18, width-i+19, height - i+18); //third squiggly line
popMatrix(); 

//WATER 2
pushMatrix(); 
translate(-90, 150); 
stroke(0);  
fill(70, 100, 160); 
ellipse(width-i, height-i,52,52); 
strokeWeight(1); 
bezier(width-i-23,  height-i-10, width-i-6, height-i-20, width-i+6, height-i-2, width-i+25, height - i-2); //first squiggly line 
bezier(width-i-26,  height-i, width-i-3, height-i-9, width-i+6, height-i+8, width-i+24, height - i+10); //second squiggly line
bezier(width-i-23,  height-i+10, width-i-6, height-i+3, width-i+6, height-i+18, width-i+19, height - i+18); //third squiggly line
popMatrix(); 

//WATER 3
pushMatrix(); 
translate(90, -150); 
stroke(0);  
fill(70, 100, 160); 
ellipse(width-i, height-i,52,52); 
strokeWeight(1); 
bezier(width-i-23,  height-i-10, width-i-6, height-i-20, width-i+6, height-i-2, width-i+25, height - i-2); //first squiggly line 
bezier(width-i-26,  height-i, width-i-3, height-i-9, width-i+6, height-i+8, width-i+24, height - i+10); //second squiggly line
bezier(width-i-23,  height-i+10, width-i-6, height-i+3, width-i+6, height-i+18, width-i+19, height - i+18); //third squiggly line
popMatrix(); 

//WATER 4
pushMatrix(); 
translate(-270,210); 
stroke(0);  
fill(70, 100, 160); 
ellipse(width-i, height-i,52,52); 
strokeWeight(1); 
bezier(width-i-23,  height-i-10, width-i-6, height-i-20, width-i+6, height-i-2, width-i+25, height - i-2); //first squiggly line 
bezier(width-i-26,  height-i, width-i-3, height-i-9, width-i+6, height-i+8, width-i+24, height - i+10); //second squiggly line
bezier(width-i-23,  height-i+10, width-i-6, height-i+3, width-i+6, height-i+18, width-i+19, height - i+18); //third squiggly line
popMatrix(); 

//WATER 5
pushMatrix(); 
translate(150,-330); 
stroke(0);  
fill(70, 100, 160); 
ellipse(width-i, height-i,52,52); 
strokeWeight(1); 
bezier(width-i-23,  height-i-10, width-i-6, height-i-20, width-i+6, height-i-2, width-i+25, height - i-2); //first squiggly line 
bezier(width-i-26,  height-i, width-i-3, height-i-9, width-i+6, height-i+8, width-i+24, height - i+10); //second squiggly line
bezier(width-i-23,  height-i+10, width-i-6, height-i+3, width-i+6, height-i+18, width-i+19, height - i+18); //third squiggly line
popMatrix(); 
/////////////////////////////////////////////////////////////////////////////////////

//AIR SWIRL 1
pushMatrix(); 
translate(i+2, i- 58); 
fill(255); 
strokeWeight(0.5); 
beginShape();
    int j = i ;
    for(j=0;j<90;j++)
    {
      curveVertex((j*0.2)*sin(j/5.0),(j*0.2)*cos(j/5.0));
    }
endShape();
popMatrix(); 

//AIR SWIRL 2
pushMatrix(); 
translate(i-22, i- 58); 
fill(255); 
strokeWeight(0.5); 
beginShape();
    j = i ;
    for(j=0;j<88;j++)
    {
      curveVertex((j*0.2)*sin(j/5.0),(j*0.2)*cos(j/5.0));
    }
endShape();
popMatrix(); 

//AIR SWIRL 3
pushMatrix(); 
translate(i-10, i- 80); 
fill(255); 
strokeWeight(0.5); 
beginShape();
    j = i ;
    for(j=0;j<80;j++)
    {
      curveVertex((j*0.22)*sin(j/5.0),(j*0.22)*cos(j/5.0));
    }
endShape();
popMatrix(); 

////////AIR SWIRL SECOND SET

//AIR SWIRL 1
pushMatrix(); 
translate(i-140, i+65); 
fill(255); 
strokeWeight(0.5); 
beginShape();
    j = i ;
    for(j=0;j<90;j++)
    {
      curveVertex((j*0.2)*sin(j/5.0),(j*0.2)*cos(j/5.0));
    }
endShape();
popMatrix(); 

//AIR SWIRL 2
pushMatrix(); 
translate(i-120, i+65); 
fill(255); 
strokeWeight(0.5); 
beginShape();
    j = i ;
    for(j=0;j<88;j++)
    {
      curveVertex((j*0.2)*sin(j/5.0),(j*0.2)*cos(j/5.0));
    }
endShape();
popMatrix(); 

//AIR SWIRL 3
pushMatrix(); 
translate(i-132, i+42); 
fill(255); 
strokeWeight(0.5); 
beginShape();
    j = i ;
    for(j=0;j<80;j++)
    {
      curveVertex((j*0.22)*sin(j/5.0),(j*0.22)*cos(j/5.0));
    }
endShape();
popMatrix(); 

////////AIR SWIRL THIRD SET

//AIR SWIRL 1
pushMatrix(); 
translate(i+240, i-55); 
fill(255); 
strokeWeight(0.5); 
beginShape();
    j = i ;
    for(j=0;j<90;j++)
    {
      curveVertex((j*0.2)*sin(j/5.0),(j*0.2)*cos(j/5.0));
    }
endShape();
popMatrix(); 

//AIR SWIRL 2
pushMatrix(); 
translate(i+220, i-55); 
fill(255); 
strokeWeight(0.5); 
beginShape();
    j = i ;
    for(j=0;j<88;j++)
    {
      curveVertex((j*0.2)*sin(j/5.0),(j*0.2)*cos(j/5.0));
    }
endShape();
popMatrix(); 

//AIR SWIRL 3
pushMatrix(); 
translate(i+230, i-80); 
fill(255); 
strokeWeight(0.5); 
beginShape();
    j = i ;
    for(j=0;j<80;j++)
    {
      curveVertex((j*0.22)*sin(j/5.0),(j*0.22)*cos(j/5.0));
    }
endShape();
popMatrix();

//////////AIR SWIRL SET 4

//AIR SWIRL 1
pushMatrix(); 
translate(i-318, i +124); 
fill(255); 
strokeWeight(0.5); 
beginShape();
    j = i ;
    for(j=0;j<90;j++)
    {
      curveVertex((j*0.2)*sin(j/5.0),(j*0.2)*cos(j/5.0));
    }
endShape();
popMatrix(); 

//AIR SWIRL 2
pushMatrix(); 
translate(i-300, i + 124); 
fill(255); 
strokeWeight(0.5); 
beginShape();
    j = i ;
    for(j=0;j<88;j++)
    {
      curveVertex((j*0.2)*sin(j/5.0),(j*0.2)*cos(j/5.0));
    }
endShape();
popMatrix(); 

//AIR SWIRL 3
pushMatrix(); 
translate(i-309, i + 100); 
fill(255); 
strokeWeight(0.5); 
beginShape();
    j = i ;
    for(j=0;j<80;j++)
    {
      curveVertex((j*0.22)*sin(j/5.0),(j*0.22)*cos(j/5.0));
    }
endShape();
popMatrix(); 

//////////////////////////////////////////////////////////////////////////////////////

//EARTH
pushMatrix(); 
translate(-46, 50); 
stroke(30,140,50); 
strokeWeight(20);
beginShape();
line(width-i, height-i, width-i+30, height-i); 
line(width-i+30,height-i, width-i+25, height- i - 40 );
line(width-i,height-i, width-i+5, height- i - 40 );
line(width-i+5,height-i-40, width-i+25, height- i - 40 );
endShape();
popMatrix();

//EARTH 2
pushMatrix(); 
translate(75,-70); 
stroke(30,140,50); 
beginShape();
fill(30,50,140); 
line(width-i, height-i, width-i+30, height-i); 
line(width-i+30,height-i, width-i+25, height- i - 40 );
line(width-i,height-i, width-i+5, height- i - 40 );
line(width-i+5,height-i-40, width-i+25, height- i - 40 );
endShape();
popMatrix();

//EARTH 3
pushMatrix(); 
translate(-225,110); 
stroke(30,140,50); 
beginShape();
fill(30,50,140); 
line(width-i, height-i, width-i+30, height-i); 
line(width-i+30,height-i, width-i+25, height- i - 40 );
line(width-i,height-i, width-i+5, height- i - 40 );
line(width-i+5,height-i-40, width-i+25, height- i - 40 );
endShape();
popMatrix();

//EARTH 3
pushMatrix(); 
translate(135,-250); 
stroke(30,140,50); 
beginShape();
fill(30,50,140); 
line(width-i, height-i, width-i+30, height-i); 
line(width-i+30,height-i, width-i+25, height- i - 40 );
line(width-i,height-i, width-i+5, height- i - 40 );
line(width-i+5,height-i-40, width-i+25, height- i - 40 );
endShape();
popMatrix();


}
 
}

void draw(){
   
}