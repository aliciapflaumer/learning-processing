// Declare car object as a global variable
Car myCar1;
Car myCar2;

void settings () {
  size(400, 400);
}

void setup() {
  // Initialize car object
  // Pass parameters into new Car() object
  myCar1 = new Car(color(255, 0, 0), 0, 50, 1);
  myCar2 = new Car(color(0, 0, 255), 0, 100, 1);
}

void draw(){
  background(255);

  // Operate Car object
  myCar1.move();
  myCar1.display();

  myCar2.move();
  myCar2.display();
}
