//Firdous

float i = 0;
int jay = 16;
int kay = 9;
float exx,eyy = 0;

void setup() {
  size(1800, 1000);
  //background(200);
  background(0);
  translate(width/2, height/2);
  frameRate(100);
}


void draw() {
  //background(170);
  //background(120);
  //background(0);
  translate(width/2, height/2);
  stroke(155);
  for (float j = 0; j<=jay; j++) { //8
    //fill(255-100*noise(i/2), 180+j*3+100*noise(i/2+10), 190+j*3+100*noise(i/2+100));
    //fill(255, 180+j*3, 190+j*3));
    for (int k = 0; k < kay+1; k++) {  
      fill(255-200*noise(i/5+j/12),255-200*noise(i/5+50+j/12),255-200*noise(i/+100+j/12));// TIME, LEVEL, PETAL
      //stroke(120-k*3);
      stroke(30);;
      undl(jay*kay*1.2-j*kay*1.2, k*(360/kay)+(0.6+j)+2.5*(j+3+noise(i/30))*sin((i+j)/2)+(10*noise(i/8)-2.5),exx,eyy); //96
    }
  }

  //undl(20,10);
  // undl(10,-20);

  i+=0.8;
}


void undl(float kar, float xi, float ex, float ey) {
  pushMatrix();
  translate(ex,ey);
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