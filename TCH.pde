//TCH

int x = 0;

void setup() {
  background(255);
  size(600, 600);
}

void draw() {
  //noStroke();

  //fill(255);
  //rect(0+x, 0, width, height);
  //x+=1;

  //if (x == width) {
  //  //exit();
  //}

  stroke(255, 0, 0);
  noFill();
  beginShape();
  vertex(300, 100);
  bezierVertex(320, 150, 325, 175, 380, 230);
  endShape();
  beginShape();
  vertex(380,230);
  bezierVertex(420, 270, 405, 355, 310, 315);
  bezierVertex(310, 370, 300, 435, 300, 515);
  endShape();
}