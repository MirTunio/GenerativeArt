//Disucssions about privacy
//The future of the human race
//The future of the internet
//The future of a man's existence
//As an extension
//Safeguarading individuality
//Of life as a collective experience
//Of our humanity
//Of our hands held with others
//About a co-evolution
//To solve the greatest challenges we face as humans

float x, y, t, n = 0;

void setup() { size(64, 128); background(0); stroke(255); }

void draw() {
  life();
  passage();
  change();
  revival();
}

void life(){ point(x+width/2, y+height/2); }

void passage(){ t+=PI/n; x = 12*n*cos(t); y = 12*n*sin(t); }

void change(){ if(t>100*n){ n+=1; } }

void revival(){ if(t>1000){ t = 0; n = 1; background(0); } }