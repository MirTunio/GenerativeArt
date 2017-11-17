
float x;
float y;
float t;
float A = 140;
float rad = 70;
float WavesPerC = 2;

float ax;
float ay;

float Ix;
float Iy;

float magic;


void setup(){
  size(400,400);
  background(255);
  stroke(0);
  frameRate(9001);
  
}

void draw(){
 
  x = 200 + (A*sin(t*WavesPerC))*cos(t) + rad*cos(t);
  y = 200 + (A*sin(t*WavesPerC))*sin(t) + rad*sin(t);
  

  ax = 200 + (A*sin(t*WavesPerC))*cos(-t) + rad*cos(-t); //+ PI/1.01
  ay = 200 + (A*sin(t*WavesPerC))*sin(-t) + rad*sin(-t); //+ PI/1.01
  
  Ix = t*100  + 10;
  Iy = A*sin(t*WavesPerC) + A*sin(t*WavesPerC) + 350;
  
  strokeWeight(2);
  stroke(0);
  point(x,y);
  stroke(255,0,0);
  point(ax,ay);
  strokeWeight(1);
  stroke(0,0,255);
  point(Ix,Iy);
  t+=0.001;
  
  if(t>PI){
    //noLoop();
  }
  
  
}
