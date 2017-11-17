float i = 0;

void setup(){
  background(0,0,0);
  size(100,100);
  frameRate(50);
}

void draw(){
    stroke(255,0,0);
    spinny(); 
    fill(0,10);
    stroke(0);
    rect(-0.25,-0.25,100.25,100.25);
}

void spinny(){
   strokeWeight(8);
   point(25*sin(i)+50,25*cos(i)*cos(i/10)+50);
   i+= 0.1;
}

