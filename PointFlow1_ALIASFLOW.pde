import processing.pdf.*;

int pts = 170;
float gap = 0;
flowpoint[] flowpoints;
int pointnum = 0;
float T = 0;

void setup(){
  size(900,900,P3D);
  background(255);
  gap = float(width)/pts;
  
  flowpoints = new flowpoint[11390625];
  int index = 0;
  for(int i = 0; i<width; i+=gap){
    for(int j = 0; j<width; j+=gap){
      for(int k = 0; k<width; k+=gap){
        flowpoints[index++] = new flowpoint(i,j,k);
      }
    }
  }
  
  pointnum = index;
  println(pointnum);
  noLoop();
  
}

void draw(){
  beginRaw(PDF, "AliasFlow1.pdf");
  
  for(int i = 0; i < pointnum; i++){
    flowpoints[i].update(0,0,0);
  }
  T+=0.001;
  
  endRaw();  
  exit();
}


class flowpoint {
  float x, y, z;  
  flowpoint(float ix, float iy, float iz){
    x = ix;
    y = iy;
    z = iz;
  }
  void update(float Xp, float Yp, float Zp){
    point(x,y,z);
    x = x + Xp;
    y = y + Yp;
    z = z + Zp;
  }
}
