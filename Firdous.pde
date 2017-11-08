//Firdous

float i = 0;
float b,d;

void setup(){
  size(800,500);
  background(255);
  translate(width/2,height/2);
}


void draw(){
  point(width/2+i,height/2);
  translate(width/2,height/2);
  undl(20,10);
  undl(10,-20);
}


void undl(float kar, float xi){
  b = width/2;
  d = height/2;
  
  pushMatrix();
  rotate(radians(xi));
  fill(255,192,203);
  beginShape();
  vertex(b,d);
  vertex(b+kar,d-kar);
  vertex(b,d-3*kar);
  vertex(b-kar,d-kar);
  vertex(b,d);
  endShape();
  popMatrix();
  
  
}