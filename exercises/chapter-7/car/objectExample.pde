// Declare car object as a global variable
Car myCar;

void settings () {
  size(400, 400);
}

void setup() {
  // Initialize car object
  myCar = new Car();
}

void draw(){
  background(255);

  // Operate Car object
  myCar.move();
  myCar.display();
}
