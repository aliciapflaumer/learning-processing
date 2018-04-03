void setup() {
 size(600,500); 
}

void draw() {
  background(255);
  
  translate(mouseX, mouseY);
  
  // Set ellipses and rects to CENTER mode
  rectMode(CENTER);
  ellipseMode(CENTER);
  
  // body
  stroke(0);
  fill(#4359AF);
  rect(0, 0, 30, 60);
  
  // head
  fill(#F2D189);
  ellipse(0, -40, 50, 50);
  
  //eyes
  fill(0);
  ellipse(-9, -40, 10, 10);
  ellipse(+9, -40, 10, 10);
}
