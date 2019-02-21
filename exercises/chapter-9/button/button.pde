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

  void register() {
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
