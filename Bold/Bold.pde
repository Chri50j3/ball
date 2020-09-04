float BoxSize = 500;
float x = 250, y = 150;
float speedx = 2;
float speedy = 2;
float D = 40;
float farve = 150;

void setup(){
size(500,500);
}

void draw(){
  background(farve);
  farve -= BoxSize/5000;

  //Kasse
  noFill();
  stroke(255);
  rectMode(CENTER);
  rect(width/2,height/2,BoxSize,BoxSize);
  BoxSize -= 0.5;
  
  if(BoxSize <= 0){BoxSize = 0;}
  
  //bold
  fill(255);
  noStroke();
  ellipse(x,y,25,25);
  x += speedx;
  y += speedy;
  
  //bounce
  if(x >= width/2+BoxSize/2 || x <= width/2-BoxSize/2){
  speedx *= -1;
  }
  if(y >= height/2+BoxSize/2 || y <= height/2-BoxSize/2){
  speedy *= -1;
  }
  
  //bugfix så bolden ikke falde ud
  if(x > width/2+BoxSize/2){x = width/2+BoxSize/2;}
  if(x < width/2-BoxSize/2){x = width/2-BoxSize/2;}
  if(y > height/2+BoxSize/2){y = height/2+BoxSize/2;}
  if(y < height/2-BoxSize/2){y = height/2-BoxSize/2;}

}
