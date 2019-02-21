void settings() {
  size(300,300);
}

Button [] buttons = new Button[1];

void setup() {
  buttons[0] = new Button(100, 100, 20, 20);
}

void draw() {
  background(100);

  for (int i = 0; i < buttons.length; i++) {
    // buttons[i].mousePressed(mouseX, mouseY);
    buttons[i].register();
  }
}

// void mousePressed() {
//   // A new button object
//   Button b = new Button(mouseX, mouseY, 10);
//
//   // Append to array
//   buttons = (Ball[]) append(buttons, b);
// }
