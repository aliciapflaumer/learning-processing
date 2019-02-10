class Car {
 color c;
 float xpos;
 float ypos;
 float xspeed;

 Car() {
   c = color(255);
   xpos = width/2;
   ypos = height/2;
   xspeed = 1;
 }

 void display(){
  // Car is drawn as a square
  rectMode(CENTER);
  fill(c);
  rect(xpos, ypos, 40, 20);
 }

 void move() {
  xpos = xpos + xspeed;
  if (xpos > width) {
   xpos = 0;
  }
 }
}
