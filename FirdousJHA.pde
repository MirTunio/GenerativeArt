//Firdous

float i = 0;
int jay = 16;
int kay = 9;

void setup() {
  size(1200, 900);
  background(200);
  translate(width/2, height/2);
  frameRate(100);
}


void draw() {
  background(170);
  background(120);
  translate(width/2, height/2);
  stroke(155);
  for (int j = 0; j<=jay; j++) { //8
    //fill(255-100*noise(i/2), 180+j*3+100*noise(i/2+10), 190+j*3+100*noise(i/2+100));
    //fill(255, 180+j*3, 190+j*3));
    for (int k = 0; k < kay+1; k++) {  
      //fill(RED,GREEN,BLUE); TIME, LEVEL, PETAL
      //stroke(120-k*3);
      stroke(100);
      undl(jay*kay*1.2-j*kay*1.2, k*(360/kay)+(0.6+j)+2.5*(j+1+k*3)*sin((i+j)/2)+(5*noise(i/8)-2.5)); //96
    }
  }

  //undl(20,10);
  // undl(10,-20);

  i+=0.08;
}


void undl(float kar, float xi) {
  pushMatrix();
  rotate(radians(xi));
  beginShape();
  vertex(0, 0);
  vertex(kar, -kar);
  vertex(0, -3*kar);
  vertex(-kar, -kar);
  vertex(0, 0);
  endShape();
  //beginShape();
  //vertex(0,0);
  //vertex(0,-3*kar);
  //endShape();
  popMatrix();
}