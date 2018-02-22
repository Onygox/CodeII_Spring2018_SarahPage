class ColorCircle {
  float radius, posX, posY, distance;
  
  ColorCircle(float r, float x, float y){
    radius = r;
    posX = x;
    posY = y;
  }
  
  void displayCircle() {
    noStroke();
    ellipseMode(CENTER);
    distance = dist(mouseX, mouseY, posX, posY);
    if (distance < radius) {
      fill(random(255), random(255), random(255));
    } else {
      fill(0);
    }
    ellipse(posX, posY, radius * 2, radius * 2);
  }
}

ColorCircle colorCircle1;

void setup(){
  size(500, 500);
  background(255);
  colorCircle1 = new ColorCircle(125, 250, 250);
}

void draw(){
  colorCircle1.displayCircle();
}