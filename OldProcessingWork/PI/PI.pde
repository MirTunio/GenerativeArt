float x;
float y;
float count;
float Pi;
int points;
float TPi;
float aPi;
float Its =1;

void setup() {
  size(300, 300);
  background(255);
  frameRate(9001);
}

void draw() {
  noFill();


  x = int(random(0, 300));
  y = int(random(0, 300));

  if (dist(x, y, 150, 150)<=150) {
    stroke(255, 0, 0);
    count = count + 1;
  } else {
    stroke(0);
  }

  point(x, y);
  stroke(0);
  ellipse(150, 150, 300, 300);

  
  
  Pi = count/(150*150);
  
  println(Pi);
  //println(aPi);
  //println(TPi);
  
    if(points>300*300){
    
    TPi += Pi;
    aPi = TPi/Its;
    count=0;
    points=0;
    background(255);
    Pi=0;
    Its++;
   
  }
    
  points++;
  
  
  

}