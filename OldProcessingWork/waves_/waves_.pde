
float x;
float y;
float t;
float A = 10;
float rad = 50;
float WavesPerC = 40;

float ax;
float ay;

float Ix;
float Iy;

float magic;


void setup() {
  size(400, 400);
  background(255);
  stroke(0);
  frameRate(9001);
}

void draw() {

  //  x = 50 + 100*t; //200 + ((A*sin(t*WavesPerC)) + rad)*cos(t);
  //  y = 150 + x*(t/10) ; //*sin(t);//*sin(t);
  //  
  x = 0 ;
  y = (A*sin(t*WavesPerC));

  translate(100*t, height/2 +t*t*10);
  rotate(tan(20*t));

  //  x = 200 + ((A*sin(t*WavesPerC)) + rad)*cos(t);
  //  y = 150 + ((A*sin(t*WavesPerC)) + rad)*sin(t);
  //  

  //  ax = 50 + 100*t;//200 + ((A*sin(t*WavesPerC)) + rad);//*cos(-t); //+ PI/1.01
  //  ay = 150 + ((A*sin(t*WavesPerC)) + rad) + 100*sin(-t);//*sin(-t); //+ PI/1.01
  //  
  //
  // 
  //  Ix = t*100  + 10;
  //  Iy = A*sin(t*WavesPerC) + A*sin(t*WavesPerC) + 350;

  strokeWeight(1.5);
  stroke(0);
  point(x,y);
  stroke(255, 0, 0);
  //point(ax,ay);
  strokeWeight(1);
  stroke(0, 0, 255);
  //point(Ix,Iy);
  t+=0.0001;

  if (t>PI) {
    noLoop();
  }
}

