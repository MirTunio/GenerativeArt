//Escher
//Canvas extends beyond frame
int state = 0;
float t = 0;
float x = -40;
float y = 40;

void setup(){
  size(400,600);
  background(255);
  frameRate(4500);
}

void draw(){
  noStroke();
  fill(255,1);
  rect(0,0,width,height);
  stroke(0);
  strokeWeight(1.2);
  state();
  move();
  cluster(x,y);
  t+=0.01;
}




void cluster(float ox,float oy){
  point(ox+noise(t)*35+width/2,oy+noise(t+30)*35+height/2);
  point(ox+noise(t+123)*35+width/2,oy+noise(t+310)*35+height/2);
  point(ox+noise(9+t)*35+width/2,oy+noise(t+280)*35+height/2);
  point(ox+noise(t+23)*35+width/2,oy+noise(t+420)*35+height/2);
  point(ox+noise(t+4)*35+width/2,oy+noise(t+10)*35+height/2);
  point(ox+noise(t+123)*35+width/2,oy+noise(t+380)*35+height/2);
  point(ox+noise(9+t)*35+width/2,oy+noise(t+190)*35+height/2);
  point(ox+noise(t+69)*45+width/2,oy+noise(t+17)*45+height/2);
  point(ox+noise(t+4)*45+width/2,oy+noise(t+10)*45+height/2);
  point(ox+noise(t+123)*45+width/2,oy+noise(t+380)*45+height/2);
  point(ox+noise(9+t)*45+width/2,oy+noise(t+190)*45+height/2);
  point(ox+noise(t+69)*45+width/2,oy+noise(t+17)*45+height/2);
}

void move(){
  if(state == 0){
    x = x + 1;
    y = y - 0.5;
  }
  if(state == 1){
    x = x - 1.2;
    y = y - 0.5;
  }
  if(state == 2){
    x = x - 0.5;
    y = y + 0.7;
  }
  if(state == 3){
    x = x + 0.6;
    y = y + 0.5;
  }
  
}

void state(){
  if(x>100 && state == 0){
    state = 1;
  }
  if(y<-150 && state == 1){
    state = 2;
  }
  if(x<-100 && state == 2){
    state = 3;
  }
  if(y>150 && state == 3){
    state = 0;
  }
}