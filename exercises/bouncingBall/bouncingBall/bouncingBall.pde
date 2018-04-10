int x = 0;
int speed = 1;

void setup() {
 size(300, 300); 
}

void draw() {
  background(227, 218, 206);
  stroke(0);
  fill(#659FD1);
  ellipse(x, 100, 30, 30);
  
  // location = location + speed
  x = x + speed;
  
  if ((x > width) || (x < 0)) {
   speed = speed * -1; 
  }
}
