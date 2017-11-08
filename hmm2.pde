//vacuous
//vacuous
//state of mind

float t=0.1;
float tim = 0;
boolean s = false;

float x1 = 1500;

void setup(){
  size(1000,1000);
  background(255);
  stroke(0);
  strokeWeight(3);
  point(width/2,height/2);
  strokeWeight(1);
  stroke(224,74,93);
  frameRate(100);
}

void draw(){
  one(t);
  two(s);
  t+=0.01*t;
  
}

void one(float time){
  strokeWeight(1);
  line(width/2+2,height/2,width/2+time,height/2);
  if(time > 530){ t = 0.5; stroke(0); s = true;}
}

void two(boolean tig){
  if(s == true){
    tim+=0.005;
    strokeWeight(1.5);
    line(width/2,height/2,x1,height/2 + 1500*sin(tim));
    line(width/2,height/2,x1,height/2 - 1500*sin(tim));
    x1 = 1500*cos(tim);
}
  println(tim);
}