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

// Create constructor function Car()
// Add arguments to constructor
 Car(int tempC, float tempX, float tempY, float tempXspeed) {
   c = tempC;
   xpos = tempX;
   ypos = tempY;
   xspeed = tempXspeed;
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
Car myCar1;
Car myCar2;

public void settings () {
  size(400, 400);
}

public void setup() {
  // Initialize car object
  // Pass parameters into new Car() object
  myCar1 = new Car(color(255, 0, 0), 0, 50, 1);
  myCar2 = new Car(color(0, 0, 255), 0, 100, 1);
}

public void draw(){
  background(255);

  // Operate Car object
  myCar1.move();
  myCar1.display();

  myCar2.move();
  myCar2.display();
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
