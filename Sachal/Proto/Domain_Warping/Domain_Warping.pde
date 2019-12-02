//Domain Warping 

PImage i1, i2, i3;
PImage[] z;

void setup(){
  size(1200,1200);
  background(255);
  
  i1 = loadImage("A.jpg");
  i2 = loadImage("B.png");
  i3 = loadImage("C.jpg");
  
  i1.resize(1200,1200);
  i2.resize(1200,1200);
  i3.resize(1200,1200);
  
}

void draw(){
  image(i1,0,0);
  image(i2,0,0);
  image(i3,0,0);
  
}
