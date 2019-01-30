Car myCar;

void settings() {
 size(400,200); 
}

void setup(){
 // Initialize car object
 myCar = new Car();
}

void draw(){
 background(255);
 myCar.move();
 myCar.display();
}
