
int track = 0;
float price = 200;
float bought_price;
float sold_price;
float profit;
int time = 0;
float margin;
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
  
  time++;
  
  begin();
  if(!leave == true){
     ratchet();
   }
  
  stats();
  
  if(time > 500){
    leave = true;
    leaveProtocol();
  }
  
}

void begin(){
  if (time == 1){
    buy();
    bought_price = price;
  }
}
    
void buy(){
  held = true;
}
  
void sell(){
  held = false;
}
  
void stats(){
    print(time + " ");
  
    print("buy: " + bought_price);
    print(", ");
    
    print("sold: " + sold_price);
    print(", ");
    
    print("profit: " + profit);
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

void ratchet(){
  if(held == true){
    if (price > bought_price + margin){
      sold_price = price;
      profit += sold_price;
      net = sold_price - bought_price;
      sell();
      println("SOLD!");
    }
  }
  
  if(held == false){
    if(price > sold_price ){
      bought_price = price;
      profit -= bought_price;
      buy();
      println("BOUGHT!");
    }
  }
}
  
 
void leaveProtocol(){
    if(held == true){
      if(price >= bought_price){
        sell();
        profit += sold_price - bought_price;
        sold_price = price;
        noLoop();
        println("OUT");
      }
      
    if(held == false){
      noLoop();
      println("OUT");
      }
    }
    
    
   if(time > 1500){
      sell();
      profit += sold_price - bought_price;
      println("OUT");
   }
   
   
    
   
      
  
}
    
        
  
  
  
