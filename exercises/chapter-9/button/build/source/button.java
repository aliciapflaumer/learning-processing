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

class Button {
  float x;
  float y;
  float w;
  float h;
  boolean on;


  Button(float tempX, float tempY, float tempW, float tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;

    on = false;
  }

  public void register() {
    if (on) {
      background(255);
      stroke(0);
    } else {
      background(0);
      stroke(255);
    }
    fill(175);
    ellipse(x, y, w, h);
  }


}
public void settings() {
  size(300,300);
}

Button [] buttons = new Button[1];

public void setup() {
  buttons[0] = new Button(100, 100, 20, 20);
}

public void draw() {
  background(100);

  for (int i = 0; i < buttons.length; i++) {
    // buttons[i].mousePressed(mouseX, mouseY);
    buttons[i].register();
  }
}

// void mousePressed() {
//   // A new button object
//   Button b = new Button(mouseX, mouseY, 10);
//
//   // Append to array
//   buttons = (Ball[]) append(buttons, b);
// }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "button" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
