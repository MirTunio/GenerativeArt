//EscherMov

import moviemaker.*;
import processing.video.*;

MovieMaker mm;
 
int state = 0;
float t = 0;
float x = -40;
float y = 40;

void setup(){
  size(400,600);
  mm = new MovieMaker(this,width,height,"p5test.mov", MovieMaker.JPEG, MovieMaker.HIGH,30);
  background(255);
  frameRate(450);
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
  mm.addFrame(pixels,width,height);
}




void cluster(float ox,float oy){
  point(ox+noise(t)*35+width/2,oy+noise(t+30)*35+height/2);
  point(ox+noise(t+123)*35+width/2,oy+noise(t+310)*35+height/2);
  point(ox+noise(9+t)*35+width/2,oy+noise(t+280)*35+height/2);
  point(ox+noise(t+23)*35+width/2,oy+noise(t+420)*35+height/2);
  point(ox+noise(t+4)*35+width/2,oy+noise(t+10)*35+height/2);
  point(ox+noise(t+123)*35+width/2,oy+noise(t+380)*35+height/2);
  point(ox+noise(9+t)*35+width/2,oy+noise(t+190)*35+height/2);
  point(ox+noise(t+69)*35+width/2,oy+noise(t+17)*35+height/2);
}

void move(){
  if(state == 0){
    x = x + 0.8;
    y = y - 0.15;
  }
  if(state == 1){
    x = x + -0.5;
    y = y - 0.8;
  }
  if(state == 2){
    x = x -0.5;
    y = y + 1;
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
    state = 0;
  }
  println(state,x,y);
}




 void mousePressed() {
  mm.finishMovie();
}