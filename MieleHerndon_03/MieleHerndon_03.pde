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
    fill(map(posX, 0, width, 0, 255));
    ellipse(posX, posY, radius * 2, radius * 2);
  }
}

ColorCircle[] circles = new ColorCircle[100];

void setup(){
  size(500, 500);
  background(255);
  int s = 0;
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
    circles[s] = new ColorCircle(width/25, 25 + (j * (width/10)),25 + (i * (width/10)));
    s++;
    }
  } 
}

void draw(){
  background(255);
  for (int k = 0; k < circles.length; k++){
    circles[k].displayCircle();
  }
}