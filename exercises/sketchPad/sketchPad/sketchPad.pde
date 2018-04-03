void setup() {
  size(500,500);
}

void draw() {
    if (mousePressed) {
      stroke(0);
      line(pmouseX, pmouseY, mouseX, mouseY);
    }
}
