    // Position of square button
int rectWidth = 200, rectHeight = 100;     // Diameter of rect
int wx = 500; //default x position for anything rather than (0,0)
int hy = 250; // default y position for anything rather than (0,0)
int level = 0 ; // controls how many characters are printed
int correct = 0; //keeps track if the user is correct or not
int score = 0 ; // keeps track of score 
String word = "", s = "" ; // initalizes strings so that words can be added later 
color currentColor = 255;
boolean game = false, game1 = false, game2 = false, finished= false; 
class getRect {
  int rectX, rectY;  
  color rectColor;
  color rectHighlight;
  boolean rectOver;
  public getRect(color col, int light, boolean over,int x, int y){
    rectColor = col; 
    rectHighlight = light; 
    rectOver = over ; 
    rectX = x; 
    rectY = y; 
  }
  
  void buttonColor(color col1, color col2){
     
    if (rectOver) {
        fill(col1);
    } 
    else {
      fill(col2);
    }
  }  
}

class getCir {
  int cirX, cirY;  
  color cirColor;
  color cirHighlight;
  boolean cirOver;
  public getCir(color col, int light, boolean over,int x, int y){
    cirColor = col; 
    cirHighlight = light; 
    cirOver = over ; 
    cirX = x; 
    cirY = y; 
  }
  
  void buttonColor(color col1, color col2){
     
    if (cirOver) {
        fill(col1);
    } 
    else {
      fill(col2);
    }
  }  
}
//RECTANGLE BUTTONS
getRect rex1 = new getRect(#FFADF7,51,false,wx,hy); 
getRect rex2 = new getRect(180,51,false,wx,hy+200); // QUIT BUTTON
getRect rex3 = new getRect(#FFADF7,51,false,wx-300,hy+100); 
getRect rex4 = new getRect(180,51,false,wx+300,hy+100); 
getRect rex5 = new getRect(180,51,false,wx+400,hy+300); // FINISH BUTTON

// CIRCLE BUTTONS
getCir cir1 = new getCir(180,51,false,wx+100,hy+220); 
getCir cir2 = new getCir(180,51,false,wx+100,hy+220); 

//////////////////DIFFICULTY MENU MEDTHOD
void diff(){
  background(255);
  
  // BEGINING OF MENU
    fill(20);
    text("What Difficulty?",wx-60,hy-50); 
    stroke(255);
    textSize(50); 
    text("Level 1",rex3.rectX+rectWidth/8,rex3.rectY-10); 
    rex3.buttonColor(#FFA7FB,#BC7FB6); 
    rect(rex3.rectX, rex3.rectY, rectWidth, rectHeight);
    fill(20);
    textSize(50); 
    text("Level 2",rex4.rectX+rectWidth/9,rex4.rectY-10); 
    rex4.buttonColor(#A0F1FF,#527A81); 
    rect(rex4.rectX, rex4.rectY, rectWidth, rectHeight);
    stroke(0);
    
    if(game1){
      level = 1; 
      game1 = true; 
      background(255); 
      game1();  
    }
    
    if(game2){
      level = 7; 
      background(255);
      game2 = true;  
      game2();
    }
    
}
//////////////////LEVEL 1 GAME METHOD
void game1(){
    fill(20);
    textSize(20); 
    text("New Input",cir1.cirX-50,cir1.cirY+80); 
    cir1.buttonColor(#609B5E,#A6FFA2); 
    ellipse(cir1.cirX, cir1.cirY, rectWidth, rectHeight);
    
    fill(20); 
    textSize(50); 
    text("GET SCORE",rex5.rectX-30,rex2.rectY+90);
    rex5.buttonColor(#902C2C,#FF6464); 
    rect(rex5.rectX, rex5.rectY, rectWidth, rectHeight);
    stroke(0);
    text(word, wx+80,hy); 
    
    if (correct==0) {
    fill(20);
    textSize(35); 
    text("Type what you see above and ", wx-140, hy+50);
    text("click ENTER or RETURN", wx-100, hy+90);
    fill(#5974F5);
    text(s, wx-50, hy+140);
  }
  if (correct==1) {
    fill((millis()+100)%255, (millis()+200)%255, millis()%255);
    text("CORRECT + 10" , wx-50, hy-170);
    ellipse(mouseX, mouseY, 20, 20);
  }
  if(finished){
    background(0);
    textSize(70);
    fill(#FEFF24);
    text("YOUR FINAL SCORE IS: "+ score,wx-300,hy);
  }
}
//////////////////LEVEL 2 GAME METHOD
void game2(){
    
    fill(20);
    textSize(20); 
    text("New Input",cir2.cirX-50,cir2.cirY+80); 
    cir2.buttonColor( #A0F1FF,#527A81); 
    ellipse(cir2.cirX, cir2.cirY, rectWidth, rectHeight);
    
    textSize(50); 
    text("GET SCORE",rex5.rectX-30,rex2.rectY+90); 
    rex5.buttonColor(#902C2C,#FF6464); 
    rect(rex5.rectX, rex5.rectY, rectWidth, rectHeight);
    stroke(0);
    text(word, wx+80,hy); 
    
  if (correct==0) {
     //background(255); 
    fill(20);
    textSize(35); 
    text("Type what you see above and ", wx-140, hy+50);
    text("click ENTER or RETURN", wx-100, hy+90);
    fill(#5974F5);
    text(s, wx-50, hy+140);
  }
  if (correct==1) {
    fill((millis()+100)%255, (millis()+200)%255, millis()%255);
    text("CORRECT + 50" , wx-50, hy-170);
    ellipse(mouseX, mouseY, 20, 20);
  }
  if(finished){
    background(0);
    textSize(70);
    fill(#FEFF24);
    text("YOUR FINAL SCORE IS: "+ score,wx-300,hy);
  }

}
void setup() {
  size(1240, 720);
  ellipseMode(CENTER);
}

///// DRAW FUNCTION START
void draw() {

  background(currentColor); 
  update(mouseX, mouseY);  //calls update method by putting in mouse coordinates

  fill(20);
  // BEGINING OF MENU
  stroke(255);
  textSize(50); 
  text("START",rex1.rectX+rectWidth/8,rex1.rectY-10); 
  rex1.buttonColor(#FFA7FB,#BC7FB6); 
  rect(rex1.rectX, rex1.rectY, rectWidth, rectHeight);
  fill(20);
  textSize(50); 
  text("QUIT",rex2.rectX+rectWidth/5,rex2.rectY-10); 
  rex2.buttonColor( #A0F1FF,#527A81); 
  rect(rex2.rectX, rex2.rectY, rectWidth, rectHeight);
  stroke(0);
  if(game==true){
     diff();
  }
}

void update(int x, int y) { // this decides if the mouse is over a certain button

  if ( overRect(rex5.rectX, rex5.rectY, rectWidth, rectHeight) ) { // FINISH BUTTON
    rex5.rectOver = true;
    return; 
  } 
  else{
    rex5.rectOver = false ;
  }
  
  if ( overCircle(cir1.cirX, cir1.cirY, rectWidth) ) { // New Word Button (level 1)
    cir1.cirOver = true;
    //return;
  } 
  else{
    cir1.cirOver = false ;
  }
  
  if ( overCircle(cir2.cirX, cir2.cirY, rectWidth) ) { // New Word Button (level 2)
    cir2.cirOver = true;
  } 
  else{
    cir2.cirOver = false ;
  }
  //SECOND LAYER OF BUTTONS
  if ( overRect(rex3.rectX, rex3.rectY, rectWidth, rectHeight) ) { //LEVEL 1 BUTTON 
    rex3.rectOver = true;
  } 
  else{
    rex3.rectOver = false ;
  }
    if ( overRect(rex4.rectX, rex4.rectY, rectWidth, rectHeight) ) { // LEVEL 2 BUTTON
    rex4.rectOver = true;
  } 
  else{
    rex4.rectOver = false ;
  }
  ////FIRST LAYER OF BUTTONS
  if ( overRect(rex1.rectX, rex1.rectY, rectWidth, rectHeight) ) { /// START BUTTON 
    rex1.rectOver = true;
  } 
  else{
    rex1.rectOver = false ;
  }

  if ( overRect(rex2.rectX, rex2.rectY, rectWidth, rectHeight) ) { // QUIT BUTTON 
    rex2.rectOver = true;
  } 
  else{
    rex2.rectOver = false ;
  }

  
}

void keyPressed() {
  if (correct==0) {
    if (key>='a'&& key<='z'|| key<='9' && key>='0') {
      s+=key;
    }
    if (key==ENTER||key==RETURN) {
      if (s.equals("logan") || s.equals(word)) {
        correct = 1;
        if(game1)
          score +=10;
        else if(game2)
          score +=50; 
      }
      s="";
    }
  }
}

char[] letters = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','1','2','3','4','5','6','7','8','9'} ;
  


void mousePressed() {

  if (rex1.rectOver) {
    game = true;  
  }
  else if (rex3.rectOver) {
    game1 = true; 
  }
  else if (rex4.rectOver) {
    game2 = true;  
  }
  else if (rex5.rectOver) {
    finished = true; 
  }
  else if (cir1.cirOver && game1) {
    correct = 0;
    word = "" + letters[int(random(35) )]  ;
  }
  else if (cir2.cirOver && game2) { // LEVEL 2 INPUT BUTTON
    correct = 0; 
    word = ""; 
    for(int i = 0; i<level; i++){
      word = word + letters[int(random(35) )] ;
    }
  }
  else if (rex2.rectOver) {
    exit(); 
  }
}

boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } 
  else {
    return false;
  }
}