class Stripe {
  float x; // horizontal location of stripe
  float speed; // speed of stripe
  float w; // width of stripe
  boolean mouse; // Is the mouse over the stripe?

  Stripe() {
    x = 0; // All stripes start at 0
    speed = random(1); // All stripes have a random positive speed
    w = random(10, 30);
    mouse = false;
  }

  void display() {
    if (mouse) { // boolean variable determines stripe color
      fill(255);
    } else {
      fill(255, 100);
    }
    noStroke();
    rect(x, 0, w, height);
  }

  void move() {
    x += speed;
    if (x > width + 20) x = -20;
  }

  // This function checks to see if the point (mx,my) is inside the stripe (returning true) or outside (returning false)
  void rollover(int mx, int my) {
    // Left edge is x, right edge is x + w
    if (mx > x  & mx < x + w) {
      mouse = true;
    } else {
      mouse = false;
    }
  }
}
