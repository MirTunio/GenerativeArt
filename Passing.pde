float t;

void setup(){
  size(1200,250);
}

void draw(){
  stroke(255);
  line(0,height/2,t,height/2);
  t+=0.5;
}