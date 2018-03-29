function setup() {
  createCanvas(600, 500);
}

function draw() {
  // body
  stroke(0);
  fill(167, 162, 162);
  // The 5th parameter adds rounded corners
  rect(240, 210, 110, 200,7);
  
  // head
  noFill();
  ellipse(295, 155, 110, 110);

  // eyes
  noStroke();
  fill(0);
  ellipse(270, 150, 30, 30);

  ellipse(320, 150, 30, 30);

  // arms
  stroke(0);
  line(240, 230, 220, 300); 
  line(350, 230, 420, 220);
  
}
