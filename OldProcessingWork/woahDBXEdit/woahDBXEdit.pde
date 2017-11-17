
float x;
float y;
float t;
float A;
float clr;



void setup(){
  size(400,400);
  background(255);
  
  frameRate(9001);
}

void draw(){
  fill(255,2);
  rect(0,0,width,height);
  
  A = 100;
  
  for(int i=0;i<10; i++){
  x = 200 + A*sin(t*20)*cos(t);
  y = 200 + A*cos(t*20)*sin(t);
  clr = 130*noise(t) + 125;
  stroke(clr,0,0);
  line(0,0,x,y);
  stroke(0,clr,0);
  line(width,0,x,y);
  stroke(0,0,clr);
  line(width/2,height,x,y);
  }
  

  
  t+=0.01;
}
