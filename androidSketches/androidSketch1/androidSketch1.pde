void setup() {
  fullScreen();
  background(#C9DCED);
}

void draw() {
  if (mousePressed) {
    stroke(0);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}
