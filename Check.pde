//Check

float t = 0;

void setup(){
  size(350,350);
  background(160);
  frameRate(400);
}

void draw(){
  line(t,0,t,height);
  t += 0.1; 
  if(t>width+100){
    exit(); 
  }
}