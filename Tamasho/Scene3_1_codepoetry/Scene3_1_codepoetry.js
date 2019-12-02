//Scene 3
//[Just the code]

var t = 1;
var particles = [];
var clist = [];
var scrn;
var vdis;
let pg;
let bg;

function setup() {
  createCanvas(1920, 1080);
  background(5);
  frameRate(60);

  carousel_set();
  gx = new sgalaxy(1630, height/2-25, t, 0, 200,0.01);
  gx.itit();

  bg = createImage(1800, 400);
  bg.loadPixels();
  for (let i = 0; i < bg.width; i++) {
    for (let j = 0; j < bg.height; j++) {
      alph = abs(i-width/2)/(width/2);
      bg.set(i, j, color(5, 5, 5, alph));
    }
  }
  bg.updatePixels();

  stroke(255);

  for (var i = 0; i < particles.length; i++) {
    particles[i].update();
  }
}

function draw() {
  background(bg);
  noStroke();
  fill(5);
  rect(1200, 0, width, height);

    
  if (t%2==0) {  
    noStroke()
    rect(0, 0, 550, height);
    
    stroke(255);
    vdis = 300;
    ellipse(229,125+vdis,390,20);
    ellipse(229,346+vdis,390,20);
    
    for (var i = 0; i < particles.length; i++) {   
      particles[i].show();
    }
  }
  
  noStroke();

  for (var i = 0; i < particles.length; i++) {
    particles[i].update();
  }
  
  gx.upup();

  loadPixels();
  mrr(32, 424, 768, t);
  mrr2(1420, 1840, 700, t);
  updatePixels();

  t+=1;  

  textSize(30);  
  var rd = 50-vdis;
  mirrorDM(189+40, 50-rd, t/100); 
  mirrorRF(189+40, 80-rd, t/100);
  mirrorRF(189+40, 80-rd, 0);
  mirrorRF(189+40, 80-rd, t/100+PI/2);
  mirrorRF(189+40, 80-rd, t/100+PI/4);
  mirrorRF(189+40, 80-rd, t/100+PI/8);
  mirrorRF(189+40, 80-rd, t/100+PI/16);
}

function mrr(sx, fx, disp, t) {
  i = sx + t%(fx-sx);
  
  for (var j = 30+vdis; j < 387+vdis; j+=4) {
    for(var l=0; l<3;l++){
      set(i+disp+l,j,get(i+l,j)); //+l
    }
  }
}

function mrr2(sx, fx, disp, t) {
  i = fx - t%(fx-sx);

  for (var j = 20+vdis; j < 387+vdis; j+=4) {
    for(var l=0; l<3;l++){
      set(i+disp+500+l, j, color([pixels[(i+j*width+l) * 4], 0, 0]));
    }
  }
}

function mirrorDM(X, Y, t) {
  var rotspeed = 1;
  stroke(255);
  strokeWeight(1);
  fill(255,10);
  beginShape();
  vertex(X+0, Y+0);
  vertex(X+10*cos(t), Y+15);
  vertex(X+0, Y+30);
  vertex(X-10*cos(t), Y+15);
  vertex(X+0, Y+0);
  endShape();
}

function mirrorRF(X, Y, t) {
  stroke(255);
  strokeWeight(1);
  fill(100, 10, 30,15);
  beginShape();
  vertex(X+0, Y+0);
  vertex(X+180*cos(t), Y+90);
  vertex(X-180*cos(t), Y+90);
  vertex(X+0, Y+0);
  endShape();
}