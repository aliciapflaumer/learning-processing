// In Processing 3.5, size() must now be in settings() in order to render display size properly
void settings(){
 size(400, 400); 
}

void setup(){
  background(255);
}

void draw(){
  drawFlower();
}

void drawFlower(){
  // Draw center of flower
  ellipseMode(CENTER);
  strokeWeight(1.0);
  stroke(0);
  fill(175);
  ellipse(200, 150, 50, 50);
  
  // Draw pedals
  

  
  // Draw stem
  
}
