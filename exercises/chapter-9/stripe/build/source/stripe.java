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

public class stripe extends PApplet {

class Stripe {
  float x; // horizontal location of stripe
  float speed; // speed of stripe
  float w; // width of stripe
  boolean mouse; // Is the mouse of the stripe?

  Stripe() {
    x = 0; // All stripes start at 0
    speed = random(1); // All stripes have a random positive speed
    w = random(10, 30);
    mouse = false;
  }

  public void display() {
    if (mouse) { // boolean variable determines stripe color
      fill(255);
    } else {
      fill(255, 100);
    }
    noStroke();
    // fill(#ff9500);
    rect(x, 0, w, height);
  }

  public void move() {
    x += speed;
    if (x > width + 20) x = -20;
  }

  // This function checks to see if the point (mx,my) is inside the stripe (returning true) or outside (returning false)
  public void rollover(int mx, int my) {
    // Left edge is x, right edge is x + w
    if (mx > x  & mx < x + w) {
      mouse = true;
    } else {
      mouse = false;
    }
  }
}
public void settings(){
  size(200, 200);
}

// Create the array of stripe objects
Stripe [] stripes = new Stripe[10];

public void setup(){
  for(int i = 0; i < stripes.length; i++) {
    stripes[i] = new Stripe();
  }
}

public void draw() {
  background(100);
  // Move and display all stripes
  for (int i = 0; i < stripes.length; i++) {
    // Check to see if the mouse is over a stripe by passing the mouse coordinates into the Stripe class rollover() function
    stripes[i].rollover(mouseX, mouseY);
    stripes[i].move();
    stripes[i].display();
  }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "stripe" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
