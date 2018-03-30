void setup() {
 size(600,500); 
 
}

void draw() {
  background(255);
  
  // set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  // body
  stroke(0);
  fill(112,131,198);
  rect(mouseX, mouseY, 30, 60);
  
  // head
  fill(240,202,126);
  ellipse(mouseX, mouseY-30, 50, 50);
}

void mousePressed() {
 println("Hello World");
}
