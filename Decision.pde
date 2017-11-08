//Decision

float t=0;

void setup(){
  size(1000,250);
  frameRate(300);
  background(255);
}

void draw(){
  noStroke();
  fill(255,3);
  rect(0,0,width,height);
  stroke(0);
  line(t,0,t,height);
  t+=0.2;
}