int time = 0;
float price = 200;
int track = 0;

float reserve = 1000;
float bought_price;
float sold_price;
boolean held = false;
float net;
boolean leave = false;

void setup(){
  background(0);
  size(400,400);
}

void draw(){
  stroke(255,0,0);
  price += random(-5,5);
  point(track, (400 - price));
  track++;
  
  if (track == width){
    track = 0;
    fill(0);
    rect(-1,-1,401,401);
  }
  
  begin();
  
  SimpleRatchet();
  
  stats();
  time++;
  net = reserve - 1000;
  
}

void begin(){
  if (time == 1){
    buy();
  }
}

    
void buy(){
  reserve -= price;
  held = true; 
  bought_price = price;
  }
void sell(){
  reserve += price;
  held = false; 
  sold_price = price;
  }
  
  
void stats(){
    print(time + " ");
  
    print("buy: " + bought_price);
    print(", ");
    
    print("sold: " + sold_price);
    print(", ");
    
    print("reserve: " + reserve);
    print(", ");
    
    print("net: " + net);
    print(", ");
    
    print("current: " + price);
    print(", ");
    
    print("held: ");
    print(held);
    print(", ");
    
    println("leave: " + leave);
}


void SimpleRatchet(){
  if(held){
    if(price > bought_price){
      sell();
    }
  } else {
    if(price < sold_price){
      buy();
    }
  }
}
 
//Manual: You mark the trends
void keyPressed() {
  if (key == ' ') {
    buy();
  }
  if (key == 'l'){
    sell();
  }
}

  
  
 

 
        
  
  
  
