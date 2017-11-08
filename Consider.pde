float t = 0;

void setup(){
  size(500,500);
  background(200);
  strokeWeight(4);
  stroke(0,240);
  frameRate(100);
}

void draw(){
  background(200);
  point(width/2+4*noise(t),height/2+4*noise(t+100));
  t+=0.02;
}