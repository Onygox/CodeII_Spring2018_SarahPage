class ColorCircle {
  float radius, posX, posY;
  
  ColorCircle(float r, float x, float y){
    radius = r;
    posX = x;
    posY = y;
  }
  
  void displayCircle() {
    noStroke();
    ellipseMode(CENTER);
    fill(map(mouseX, 0, 500, 0, 255));
    radius = map(mouseX, 0, width, 0, width/2);
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
  background(255);
  colorCircle1.displayCircle();
}