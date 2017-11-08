float x,y,dx,dy;
void setup(){
  size(600,900); background(250);
  dx = width/4; dy = height/4;
}

void draw(){
  x = random(dx)-dx/2;
  y = random(dy)-dy/2;
  point(width/2 + x,height/2+y);
}