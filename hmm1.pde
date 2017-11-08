//vacuous
//vacuous
//state of mind

float t=0.1;

void setup(){
  size(1000,1000);
  background(255);
  stroke(0);
  strokeWeight(3);
  point(width/2,height/2);
  strokeWeight(1);
  stroke(224,74,93);
}

void draw(){
  line(width/2+2,height/2,width/2+t,height/2);
  if(t > 530){ t = 0.5; stroke(0);}
  t+=0.01*t;
}