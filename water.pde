//of water and its various thirsts


float x = 42;
float y = 28;
color v;
float s;

void setup(){
  size(700,400);
  background(0);
  frameRate(20);
}

void draw(){
  noStroke();
  fill(0);
  rect(0,0,width-400,height-100);
  fill(0,100);
  rect(width-400,0,width,height);
  rect(0,height-100,width,height);
  stroke(255);
  culr();
  drink();
  thought();
  thought();
  thought();
  thought();
  thought();
  thought();
  thought();
  thought();
  
}

void drink(){
  fill(v);
  noStroke();
  beginShape();
  vertex(x,y-4);
  vertex(x-14,y+12);
  vertex(x,y+50);
  vertex(x+14,y+12);
  vertex(x,y-4);
  endShape();
  
  stroke(0);
  strokeWeight(0.8);
  line(x,y-4,x+5,y+13);
  line(x+5,y+13,x-1,y+51);
  line(x+5,y+13,x-14,y+12);
  line(x+5,y+13,x+14,y+12);
}

void culr(){
  v = color(noise(s+2)*255,noise(s+43)*255,noise(s+123)*255);
  s+=0.4;
}

void thought(){
  int so = int(random(1,5));
  stroke(255);
  strokeWeight(1.8);
  noFill();
  beginShape();
  float st = random(5,100*random(2))+width-150+noise(s*2)*50-s*(2.2);
  float stt = random(5,100)*random(2)+height-150+noise(s*2)*50-s;
  vertex(st,stt);
  for(int i = 0;i<so;i++){
    vertex(random(5,100*random(2))+noise(s*2)*50+width-150-s*(2.2),random(5,100)*random(2)+noise(s*2)*50+height-150-s);
  }
  vertex(st,stt);
  endShape();
  
  if(st<-200 && stt<-200){
    exit();
  }
  
}