//Capture the raw

float t = 0;
float tp = 0.1;

float xc;
float yc;

void setup(){
  background(253,240,214);
  //background(255);
  size(600,600);
  frameRate(500);
  strokeWeight(1.5);
}

void draw(){
  xc = width*noise(t);
  yc = height*noise(t+10000);
  point(xc,yc);
  point(xc+random(t),yc+random(t));
  point(xc+random(t),yc+random(t));
  point(xc+random(t),yc+random(t));
  point(xc+random(t),yc+random(t));

  
  point(xc+noise(t+10)*t,yc+noise(t+10)*t);
  point(xc+noise(t+50)*t,yc+noise(t+50)*t);
  tp += 0.01;
  t = log(tp/1000000);
  if(tp>30){
    while(true);
  }
  println(t);
}