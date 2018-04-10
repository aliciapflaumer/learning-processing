int y = 10;
int x = 50;
int spacing = 10;
int len = 20;
// Variable for line example
int endlegs = 150;


void setup() {
 size(300, 300); 
 background(255);
}

void draw() {
  // legs
  stroke(0);
  fill(#648AAA);
  //while ( x <= endlegs) {
  //x = x + spacing;
  //line(x, y, x, y+len);
  //}
  
  while ( y < height) {
   rect(100, y, 100, 10); 
   y = y + 20; 
  }
  
}
