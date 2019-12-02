//Scene 2
//Sachal Sarmast and Mansur Hallaj believ
//ed in the presence and manifestation of
//god in all aspects of creation. And so,
//in the spirit of Arthur C Clarke's The 
//Nine Billion Names of God we create a 
//machine to list all his names..........

var allCreation = 0;
var sachalSarmast = 0;

function preload() {
  FONT = loadFont("VCR_OSD_MONO.ttf"); 
  NAME = loadStrings('words_final.txt');
}

function setup() {
  createCanvas(1920, 1080);
  frameRate(1337);
  textFont(FONT);
  noStroke();
}

function draw() {
  background(0);
  textSize(168);

  for (var starsGoOut=-3; 
    starsGoOut<5; 
    starsGoOut++) {
    fill(200, 30);
    if (starsGoOut != 1 &&
      starsGoOut !=0) {
      text(egoDeath(allCreation +
      starsGoOut), 20, height/2 + 
      135*starsGoOut);
    }
  }

  if (egoDeath(allCreation) == 
    NAME[sachalSarmast]) {
    fill(255, 0, 0, 100);
    rect(20, height/2-130, 
      width, 129);
    fill(255, 0, 0);
    text(egoDeath(allCreation), 
      20, height/2);
    sachalSarmast+=1;
  } else { 
    fill(255);
    text(egoDeath(allCreation), 20,
      height/2);
  }

  fill(255, 0, 0);
  text(NAME[sachalSarmast-1], 20, 
    height/2 + 125);

  allCreation+=1;  

  fill(255);
  textSize(26);
  text("FPS: " + frameRate().toFixed(2),
    width/2, 20);
}

function egoDeath(Hallaj) {
  IAmTruth = "";
  while (Hallaj > 0) {
    Hallaj--; 
    var Mansur = Hallaj % 26;
    EXECUTION = char(Mansur + 65);
    IAmTruth = EXECUTION + IAmTruth;
    Hallaj = (Hallaj - Mansur) / 26;
  }
  return IAmTruth;
}