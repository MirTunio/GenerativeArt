//cycle

float t,x,y;

void setup(){
  background(255);
  size(300,300);
  frameRate(200);
  stroke(0);
  
}

void draw(){
  translate(width/2,height/2);
  
  x = 50*cos(t);
  y = 50*sin(t);
  
  strokeWeight(4);
  line(0,0,x,y);
 
  t+=0.06;

  if(round(t)%3 == 0){
    stroke(t*5);
  }
  if(t>70){
    //stroke(255*noise(t/10),255*noise(t/10+10),255*noise(t/10+20));
    exit();
  }
  
}