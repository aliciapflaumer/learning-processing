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

public class button extends PApplet {


public void settings() {
  size(300,300);
}


public void setup() {
  background(100);
}

public void draw() {
  fill(255);
  noStroke();
  ellipse(100, 100, 20, 20);
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "button" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
