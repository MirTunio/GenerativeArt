//You've got play the hand you've been dealt
//If there is anyone who can play the cards its you
//Bsign, know when to hold em. Know when to fold em.

//Unfinished

float t = 0;
int T = 0;

void setup(){
  background(230);
  size(400,400);
  
}


void draw(){
 T = 500;
 
    if(t<T){
      fill(255-(t/T)*300);
      rect(random(width),random(height),15,25);
      println(t);
      t += 1;
    }else{
      for(int i = 0;i<100;i++){
        fill(255,0,0);
        if(i>10){
          rect(130,200,15,25);
        }else{ if(i>20){
          rect(150,200,15,25);
        }
        }
      }
      }
    }