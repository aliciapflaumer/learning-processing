setup(){
 size(200, 200);
}

void draw(){
  background(0);
  Zoog();
}

void Zoog(){
   // Set ellipses and rects to CENTER mode
  rectMode(CENTER);
  ellipseMode(CENTER);

  // body
  stroke(0);
  fill(#4359AF);
  rect(50, 60, 30, 50);

  // head
  fill(#F2D189);
  ellipse(50, 30, 50, 50);

  //eyes
  fill(0);
  ellipse(41, 30, 10, 10);
  ellipse(60, 30, 10, 10);
}
