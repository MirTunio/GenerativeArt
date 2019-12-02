var t = 0;


function preload(){
  lkyfnt = loadFont("data/VCR_OSD_MONO.ttf");
}

function setup() {
  createCanvas(1500,1500);
  background(235);
  frameRate(60);
}


function draw() {
  background(100);
  
  lucky(width/2,500,t);
  
  t+=0.1;
  text("FPS: " + frameRate().toFixed(2), width/2-100, 100);
}

function lucky(ex,ey,t){ 
  var LIC = 'LUCKY IRANI CIRCUS';
  var drk = 0;
  
  textSize(48);
  textFont(lkyfnt);
  
  for (var j=0; j<18; j ++){
    for (var k=0; k < 2; k ++){
      for (var i = 0; i < LIC.length; i++){
        X = ex + 230*sin(i/23*PI + PI*k - t + noise(t/5+j*10) + j/15);
        Y = ey + 100*cos(i/23*PI + PI*k - t + noise(t/5+j*10) + j/15) + j*40;
        
        drk = 255*(i/23);
        
        stroke(255-drk,0,0);
        fill(0);
        text(LIC.charAt(i), X, Y);
        fill(255-drk,0,0);
        noStroke();
        text(LIC.charAt(i), X, Y+2);
      }
    }
  }
  
}