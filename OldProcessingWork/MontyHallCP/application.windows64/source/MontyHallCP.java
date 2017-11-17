import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class MontyHallCP extends PApplet {

int host;
int choice;
int reChoice;
int DoorRemove;
int Removed; 

float iterations = 1; 
float correctA = 0;
float correctB = 0;

public void setup() {
  frameRate(9001); // OVER 9000!
  size(150, 150);
}

public void draw() {
  //calling all functions calling all functions
  background(200);

  ChooseCarDoor();
  Contestant();

  Stats(choice,0, "Keep ");
  Stats(0,reChoice, "Switch ");

  iterations++;
}



public void ChooseCarDoor() {      //This funtion decides which door(1 2 or 3) the car 
  host = PApplet.parseInt(random(1, 4)); //is behind.
}


public void Contestant() {  //This function decides which door the contestant chooses
  choice = PApplet.parseInt(random(1, 4));
  Removed = removeDoor(choice, host);
  reChoice = 6 - choice - Removed;
}

public int removeDoor(int DoorChosen, int DoorCar) {  // This function removes a the 
                                               // door which doesnt have a car
                                               // behind it and also isn't the 
                                               // choice of the contestant
  if (DoorChosen != DoorCar) {                 
    DoorRemove = 6 -DoorChosen -DoorCar;      //I'm very Proud of this bit of 
                                              //code here, it finds out
                                              // which door to remove by simple
                                              // subtractiom
  }
  else if (DoorChosen == 1) {
    DoorRemove = PApplet.parseInt(random(2, 4));
  }
  else if (DoorChosen == 2) {
    if (PApplet.parseInt(random(1, 3))==1) {
      DoorRemove = 1;
    }
    else {
      DoorRemove = 3;
    }
  }
  else if (DoorChosen == 3) {
    DoorRemove =  PApplet.parseInt(random(1, 3));
  }

  return DoorRemove;
}



public void Stats(int StatsInA, int StatsInB, String strategy) { //This function is whe-
                                                          //re the success rates 

                                                          //for the two strategi-                                                          //es is determined

    if (StatsInA==host) {
      correctA++;
    }
    if (StatsInB==host) {
      correctB++;
    }
  


  float rateA = (correctA/iterations)*100;
  float rateB = (correctB/iterations)*100;

  fill(0);
  text("Iterations: " + iterations, 5, 15);
  text("Code Speed: " + millis()/iterations, 5, 30); //In milliseconds per loop
  
  if(StatsInB == 0){
  text(strategy + "Rate: " + rateA + "%", 5, 45);
  }else{
  text(strategy + "Rate: " + rateB + "%", 5, 60);
  }
}


  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "MontyHallCP" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
