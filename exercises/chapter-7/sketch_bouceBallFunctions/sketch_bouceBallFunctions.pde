// Declare global variables
int x = 0;
int speed = 1;

void setup(){
 size(200, 200); 
}

void draw(){
 background(255);
 move();
 bounce();
 display();
}

void move(){
  // change x by speed
 x = x + speed; 
}

void bounce(){
 // If ball reaches edge, reverse speed
 if ((x > width) || (x < 0)) {
  speed = speed * -1; 
 }
}

void display(){
 // Display ball at x location
 background(255);
 rectMode(CENTER);
 noFill();
 stroke(0);
 rect(x, 50, 32, 32);
 fill(255);
}
