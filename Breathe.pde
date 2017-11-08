float t=0;
float x=0;


void setup(){
  size(600,300);
  background(250);
  frameRate(80);
}

void draw(){
  noStroke();
  fill(255,30);
  rect(0,0,width,height);
  stroke(0);
  x = (height/4)*sin(t)+height/4-10;
  line(0,height/2,width,height/2-x);
  line(0,height/2,width,height/2+x);
  
  t+=0.01;
}