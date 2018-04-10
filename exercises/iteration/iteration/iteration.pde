int y = 80;
int x = 50;
int spacing = 10;
int len = 20;

void setup() {
 size(300, 300); 
 background(255);
}

void draw() {
  // legs
  stroke(0);
  line(x, y, x, y+len);
  
  x = x + spacing;
  line(x, y, x, y+len);
}
