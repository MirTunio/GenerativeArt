float x = 0;
float y = 0;
float t = 0;

void setup(){
  size(500,300);
  background(230);
  y = width/2;
  frameRate(100);
  
}

void draw(){
  strokeWeight(1.5);
  point(x,y);
  x = t/4;
  
  y = (noise(t/2)-0.5)*(x*x/600)+height/2;
  
  if(x>width/2){
    stroke(random(125)+125,0,0);
    y = y - (noise(t/2+0.01)-0.5)*(x*x/600);
  }
  
  t += ((width-x)/width);
  
  if(x==width){
    noLoop();
  }
  

}