class Car {
 color c;
 float xpos;
 float ypos;
 float xspeed;

// Create constructor function Car()
// Add arguments to constructor
 Car(color tempC, float tempX, float tempY, float tempXspeed) {
   c = tempC;
   xpos = tempX;
   ypos = tempY;
   xspeed = tempXspeed;
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
