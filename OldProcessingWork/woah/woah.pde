
float x;
float y;
float t;
float A;



void setup(){
  size(400,400);
  background(255);
  stroke(0);
  frameRate(9001);
}

void draw(){
  A = 100;
  
  
  x = 200 + A*sin(t*20)*cos(t);
  y = 200 + A*cos(t*20)*sin(t);
  
  point(x,y);
 
  t+=0.01;
}
