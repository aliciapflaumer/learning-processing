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

public class car extends PApplet {

class Car {
 int c;
 float xpos;
 float ypos;
 float xspeed;

 Car() {
   c = color(255);
   xpos = width/2;
   ypos = height/2;
   xspeed = 1;
 }

 public void display(){
  // Car is drawn as a square
  rectMode(CENTER);
  fill(c);
  rect(xpos, ypos, 40, 20);
 }

 public void move() {
  xpos = xpos + xspeed;
  if (xpos > width) {
   xpos = 0;
  }
 }
}
// Declare car object as a global variable
Car myCar;

public void settings () {
  size(400, 400);
}

public void setup() {
  // Initialize car object
  myCar = new Car();
}

public void draw(){
  background(255);

  // Operate Car object
  myCar.move();
  myCar.display();
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "car" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
