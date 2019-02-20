void settings(){
  size(200, 200);
}

// Create the array of stripe objects
Stripe [] stripes = new Stripe[10];

void setup(){
  for(int i = 0; i < stripes.length; i++) {
    stripes[i] = new Stripe();
  }
}

void draw() {
  background(100);
  // Move and display all stripes
  for (int i = 0; i < stripes.length; i++) {
    // Check to see if the mouse is over a stripe by passing the mouse coordinates into the Stripe class rollover() function
    stripes[i].rollover(mouseX, mouseY);
    stripes[i].move();
    stripes[i].display();
  }
}
