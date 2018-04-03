void setup() {
 size(600,500); 
 
}

void draw() {
  background(255);
  
  // Set ellipses and rects to CENTER mode
  rectMode(CENTER);
  ellipseMode(CENTER);
  
  // body
  stroke(0);
  fill(#4359AF);
  rect(mouseX, mouseY, 30, 60);
  
  // head
  fill(#F2D189);
  ellipse(mouseX, mouseY-40, 50, 50);
  
  //eyes
  fill(0);
  ellipse(mouseX-9, mouseY-40, 10, 10);
  ellipse(mouseX+9, mouseY-40, 10, 10);
}

void mousePressed() {
 println("Hello world"); 
}
