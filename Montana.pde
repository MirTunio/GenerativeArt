float x;
float y;
float t;

void setup(){
  background(255);
  size(500,500);
  frameRate(100);
}

void draw(){
  move();
  point(x,y);
  t+=1;
}

void move(){ 
  if(x<0){
    while(true);
  }else if(x<200){
    y = height/2;
    x = width - t;
  }else if(x<300){
    y += 1;
    x = width-t;
  } else   if(x<400){
    y -= 1;
    x = width-t;
  } else {
    y = height/2;
    x = width-t;
  }
  
  println(x);
  println(y);
  
}