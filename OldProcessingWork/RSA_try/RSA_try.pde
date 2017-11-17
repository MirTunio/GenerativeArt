/*
Pseudo:
KEYGEN
- obtain two prime numbers p and q. Should be random, similar bit length. Use python sieve
- n = pq
- compute Y(n) = Y(p)*Y(q) = (p - 1)(q - 1) = n - (p + q -1)
- choose e such that 1 < e < Y(n). e is public key component
- d = e^(-1)*(modY(n)) =+> de = 1    (mod Y(n)) :: {d*(choose e) % Y(n) = 1}

ENCRYP:

DECRYP:

__________________________________
PRACTICE modular arithmatic first:
gotit
*/

int p;
int q;
int n; // public key 
int e; // public key
int d = 0; //  private key
int Yn;
int me;

void setup() {
  p = 61;
  q = 53;
  n = p*q;
  Yn = n - p - q + 1;
  e = 17; // floor(random(0,Yn));
  findD();
    
}

void draw() {
  println(e);
  println(d);
  
  
}

void findD() {
  while ((d*e)%Yn != 1) {
    d = d + 1;
  }
}

//FUCK THIS
encrypt(int m){
  me = (m^e)%n;
  return me;
}

decrypt(int m){
  m = pow(me,d)%n;
  return m;
}
  
