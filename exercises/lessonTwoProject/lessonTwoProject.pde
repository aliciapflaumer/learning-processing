void setup() {
 size(200,200); 
}

int circleX = 0;
int circleY = 100;
int circleW = 50;
int circleH = 50;

void draw() {
  background(255);
  
  stroke(0);
  fill(175);
  ellipse(circleX, circleY, circleW, circleH);
 
 circleX = circleX + 1;
 circleW = circleW + 1;
 circleH = circleH + 1;
}
