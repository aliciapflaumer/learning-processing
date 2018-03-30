void setup() {
 size(600,500); 
 background(255);
}

void draw() {
  stroke(0);
  strokeWeight(4);
  line(pmouseX, pmouseY, mouseX, mouseY);
}
