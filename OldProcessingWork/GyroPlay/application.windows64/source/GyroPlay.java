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

public class GyroPlay extends PApplet {

float i = 0;

public void setup(){
  background(0,0,0);
  size(100,100);
  frameRate(50);
}

public void draw(){
    stroke(255,0,0);
    spinny(); 
    fill(0,10);
    stroke(0);
    rect(-0.25f,-0.25f,100.25f,100.25f);
}

public void spinny(){
   strokeWeight(8);
   point(25*sin(i)+50,25*cos(i)*cos(i/10)+50);
   i+= 0.1f;
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "GyroPlay" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
