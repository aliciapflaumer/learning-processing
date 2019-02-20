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
  float x;
  float w;

  Stripe() {
    x = 0;
    w = random(10, 30);
  }

  public void display() {
    stroke(0);
    fill(0xffff9500);
    rect(x, 0, w, height);
  }

}
public void settings(){
  size(200, 200);
}

// Create the array
Stripe [] stripes = new Stripe[10];

public void setup(){
  for(int i = 0; i < stripes.length; i++) {
    stripes[i] = new Stripe();
  }
}

public void draw() {
  background(100);
  // Display all stripes
  for (int i = 0; i < stripes.length; i++) {
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
