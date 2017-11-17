Kross c1 = new Kross(random(0,200),random(0,200),random(0,100));
Kross c2 = new Kross(random(0,200),random(0,200),random(0,100));
Kross c3 = new Kross(random(0,200),random(0,200),random(0,100));
Kross c4 = new Kross(random(0,200),random(0,200),random(0,100));
Kross c5 = new Kross(random(0,200),random(0,200),random(0,100));

float t;

void setup() {
  size(200, 200);
  background(130,188,244);
  fill(255,0,0);
  
  
}

void draw() {


  
  c1.update();
  c2.update();
  c3.update();
  c4.update();
  c5.update();
  
  t++;
}

class Kross {
  
  float x;
  float y;
  float d;
  float xi;
  float yi;

  Kross(float ecks, float why,float disp) {
    x = ecks;
    xi = ecks;
    y = why;
    yi = why;
    d = disp;
  }

  void update() {
    x++;
    xi--;
    if (x>width) {
      y+=5;
      yi+=5;
      x=0;
    }

    fill(255*noise(t/50));//sin((x+d)/20));
    noStroke();
    rect(x+255*noise(t/100),y,5,5);
    
    rect(y,x,5,5);
    
    rect(xi,yi,5,5);
    
    rect(yi,xi,5,5);
    
    stroke(255);
    point(x,y+2.5);
  }
}

//class HLine { 
//  float ypos, speed; 
//  HLine (float y, float s) {  
//    ypos = y; 
//    speed = s; 
//  } 
//  void update() { 
//    ypos += speed; 
//    if (ypos > height) { 
//      ypos = 0; 
//    } 
//    line(0, ypos, width, ypos); 
//  } 

