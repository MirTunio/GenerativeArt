int c1;
int c2;
int c3;
int c4;
int ite;

void setup(){

}

void draw(){
    c1 = int(random(1,14));
    c2 = int(random(1,14));
    c3 = int(random(1,14));
    c4 = int(random(1,14));
    
    print(c1 + " ");
    print(c2 + " ");
    print(c3 + " ");
    print(c4 + " ");
    println();
    
    ite += 1;
    
    op[1]();
  
}

void op1(){
  add += c1 + c2 + c3 + c4;
  println(op1/ite);
  
}
  
