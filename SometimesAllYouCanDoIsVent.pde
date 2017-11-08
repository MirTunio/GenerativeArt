//Sometimes all you can do is vent
//When there is some raw emotion in your soul
//And it is impenetrable
//And it is debilitating
//And it is confusing
//Channel
//Unfinished

float t = 0.1;

void setup(){
  background(255,208,205);
  size(300,300);
}

void draw(){
  t+=1;
  fill(255-t/2,208-t,205-t*0.8);//176-48-96
  noStroke();
  ellipse(width/2,height/2,10+t*2,10+t*2);
  if(t>220){
    t = 0;
  }
  
}