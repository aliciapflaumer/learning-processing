void settings(){
  size(200, 200);
}

// Create the array
Stripe [] stripes = new Stripe[10];

void setup(){
  for(int i = 0; i < stripes.length; i++) {
    stripes[i] = new Stripe();
  }
}

void draw() {
  background(100);
  // Display all stripes
  for (int i = 0; i < stripes.length; i++) {
    stripes[i].display();
  }
}
