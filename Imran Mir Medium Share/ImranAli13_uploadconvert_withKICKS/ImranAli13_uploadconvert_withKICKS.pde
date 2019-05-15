// TUNIO 2018
// His name was Imran Mir

// Could make radial! and switching! and cosntant angle shifts!

myrect[] lines;
int N = 400;
ArrayList<Float> other_x = new ArrayList<Float>();
ArrayList<Float> other_y = new ArrayList<Float>();

int kicker[] = {1, 0, -1};

void setup() {
  size(400, 400);
  background(255);

  lines = new myrect[N];

  //lines[0] = new myrect(width,height/2,PI, 0);
  //lines[1] = new myrect(0,height/2,0, 1);

  for (int i = 0; i < N; i++) {
    switch(i%4) {
    case 0:
      lines[i] = new myrect(width+(random(200)-100), height+(random(200)-100), -3*PI/4, i); //   ^\
      break;
    case 1:
      lines[i] = new myrect(0+(random(200)-100), height+(random(200)-100), -1*PI/4, i); //   /^
      break;
    case 2:
      lines[i] = new myrect(0+(random(200)-100), 0+(random(200)-100), PI/4, i); //   \_
      break;
    case 3:
      lines[i] = new myrect(width+(random(200)-100), 0+(random(200)-100), 3*PI/4, i); //   _/
      break;
    }
  }
}

void draw() {
  fill(255, 10);
  noStroke();
  rect(-1, -1, width+1, height+1);

  other_x.clear();
  other_y.clear();

  for (int i = 0; i < N; i++) {   
    lines[i].update();
    other_x.add(lines[i].myxgoto);
    other_y.add(lines[i].myygoto);
  }

  for (int i = 0; i < N; i++) {
    lines[i].checkNeighbours(other_x, other_y);
  }
}


class myrect {
  float T;
  float Tstep = 0.2 + random(1)/100;
  float myx;
  float myy;
  float mya;
  float myxgoto;
  float myygoto;
  float mystroke = 0;

  float step = 3;
  int myd;
  float norway_factor = 6;

  int lastcollwith;
  int thiscollwith;

  int kickme;

  myrect(float xin, float yin, float angle, int mydex) {
    myx = xin;
    myy = yin;
    mya = angle;
    myd = mydex;
  }

  void update() {
    strokeCap(SQUARE);
    strokeWeight(3);
    stroke(mystroke);
    myxgoto = myx+T*step*cos(mya);
    myygoto = myy+T*step*sin(mya);

    if (random(1)>0.9) {
      kickme = kicker[(int)random(3)];
      myx = myx+kickme*step*cos(mya);
      myy = myy-kickme*step*sin(mya);
    }

    line(myx, myy, myxgoto, myygoto);
    T+=Tstep;
  }

  void change(float newangle) {
    myx = myx+T*step*cos(mya);
    myy = myy+T*step*sin(mya);
    T = 0;
    mya = newangle;
  }

  void checkNeighbours(ArrayList<Float> nx, ArrayList<Float> ny) {
    float mindist = 999999999;

    for (int i = 0; i < N; i++) {
      float cdist = dist(myxgoto, myygoto, nx.get(i), ny.get(i));

      if (cdist <= mindist && i != myd) {
        mindist = cdist;
        thiscollwith = i;
      }
    }

    if (mindist <= norway_factor && thiscollwith != lastcollwith) {
      change(mya + PI/2);
      lastcollwith = thiscollwith;
    }
  }
}
