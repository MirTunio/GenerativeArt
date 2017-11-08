//Practicality or Plebian?

int t = 1;

void setup(){
  background(200);
  size(600,200);
  frameRate(6);
  textFont(loadFont("AgencyFB-Bold-48.vlw"));
}

void draw(){
  fill(0); 
  text("word",random(width-50),random(height-10));

  fill(255,0,0);
  if(t%10==0){text("choice",random(width-50),random(height-10));}
  if(t%16==0){text("practical",random(width-50),random(height-10));}
  if(t%21==0){text("success",random(width-50),random(height-10));}
  if(t%26==0){text("money",random(width-50),random(height-10));}
  
  t++;
  
  noStroke();
  fill(200,100);
  rect(0,0,width,height);
}