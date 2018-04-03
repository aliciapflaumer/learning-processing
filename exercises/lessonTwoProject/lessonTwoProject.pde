void setup() {
 size(200,200); 
}

float circleStroke = 0;
float circleFill = 255;
float circleX = 0;
float circleY = 0;
float circleW = 100;
float circleH = 100;

void draw() {
  background(175);
  ellipseMode(CENTER);
  stroke(circleStroke);
  fill(circleFill);
  ellipse(circleX, circleY, circleW, circleH);
  
  circleX = circleX + 1;
  circleY = circleY + 1;
}
