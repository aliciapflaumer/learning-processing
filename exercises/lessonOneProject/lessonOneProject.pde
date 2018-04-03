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
  ellipse(mouseX-29, mouseY-20, 20, 20);
}

void mousePressed() {
 println("Hello world"); 
}
