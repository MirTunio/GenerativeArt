float x, y, dx, dy;
int [] listx = new int[600/4];
int [] listy = new int[902/4];


void setup() {
  size(600, 902); 
  background(250);
  dx = width/4; 
  dy = height/4;
  
  for (int a = 0; a < listx.length; a++) {
    listx[a] = (a + 1) * 10;
  }

  for (int a = 0; a < listx.length; a++) {
    listx[a] = (a + 1) * 10;
  }
 
 shuffle(listx);
 shuffle(listy);
 
}


// make two arrays, 1d and pick random values from it, and then delete value
void draw() {
  //x = random(dx)-dx/2;
  //y = random(dy)-dy/2;
  //point(width/2 + x, height/2+y);
  
  for(int i=0; i<listx.length;i++){
    for(int j=0; j<listy.length;i++){
      point(listx[i],listy[j]);
    }
  }
  
  
  
}


void shuffle(int[]value) {
  int temp;
  int pick;
  for (int i=0; i<value.length; i++){
    pick  = (int)random(value.length); // picks a ronaodm position in the array
  temp = value[i]; // stores value of current position
  value[i] = pick; // copies picked value into current position
  value[pick]= temp; // store original value in picked position
  }
}