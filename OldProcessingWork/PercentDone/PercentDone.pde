

float pages = 394;
float done = 217;
float percent;
float MousePos;

void setup() {

  size(550, 150);
  background(0);
}


void draw() {

  percent = done/pages;
  noStroke();
  fill(255);
  rect(25, 25, percent*500, 100);
  noFill();
  stroke(255);
  rect(25, 25, 500, 100);

  if (mouseX<=525 && mouseX>=25) {
    MousePos = ((mouseX-25)/500);
    println(MousePos);
  }
}