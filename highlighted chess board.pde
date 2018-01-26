//LOGAN CUNDIFF
//This code is a simple checkerboard that glows whenever the mouse is over a specfic
//square of the board. I made the rectangle yellow to emphasize the highlight 


void setup(){
 
 size(400,400) ;  //setup the size
 

}

void draw(){
  background(255);
 /////////////////////////vertical lines 
  int start = 0; 
   for(int i = 0; i<width; i+=50){
       if(start ==0){
         start = 50; //this allows for the squares to be offcentered when looping through each time
       }
       else{
         start = 0; //Now the next row will start at 0 for each loop and then go back to 50
       }
     for(int j=start; j<height; j+=100){//fill in the black rectangles like a checkerboard
       fill(0); 
       rect(i,j, width/8, height/8);

     }
  }

 
 stroke(0);
    pushMatrix();

  line(width/8,0,50, 500); 
  translate(width/8,0); 
  line(width/8,0,50, 500);
  translate(width/8,0); 
  line(width/8,0,50, 500);
  translate(width/8,0); 
  line(width/8,0,50, 500);
  translate(width/8,0); 
  line(width/8,0,50, 500);
  translate(width/8,0); 
  line(width/8,0,50, 500);
  translate(width/8,0); 
  line(width/8,0,50, 500);//My lines to create board
  popMatrix(); 
  //////////////////////////horizontal lines
  pushMatrix(); 
  line(0,50,500, 50); 
  translate(0,height/8); 
  line(0,50,500, 50);
  translate(0,height/8); 
  line(0,50,500, 50);
  translate(0,height/8); 
  line(0,50,500, 50);
  translate(0,height/8); 
  line(0,50,500, 50);
  translate(0,height/8); 
  line(0,50,500, 50);
  translate(0,height/8); 
  line(0,50,500, 50);
  translate(0,height/8); 
  line(0,50,500, 50);//lines to create board
  popMatrix(); 
  
  int size = 50; //squares are 50 long and wide
  int x = mouseX; //initialize the variables
  int y = mouseY; 
  int xRem = (x%50);//this finds value of how far past mouse is from a square (x)
  int yRem = (y%50); //this finds value of how far past mouse is from a square (y)
  
  
    stroke(255);
    fill(251, 249, 131); 
    rect( (x-xRem), (y-yRem), size, size); //gets (0,0) coordinate of current rectangle and makes a new rectangle
 
}