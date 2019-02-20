class Stripe {
  float x;
  float w;

  Stripe() {
    x = 0;
    w = random(10, 30);
  }

  void display() {
    stroke(0);
    fill(#ff9500);
    rect(x, 0, w, height);
  }

}
