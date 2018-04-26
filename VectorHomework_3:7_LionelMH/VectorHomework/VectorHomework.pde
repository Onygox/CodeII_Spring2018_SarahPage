boolean mouseIsPressed;
PVector mouse, center, ballStartLoc, ballStartVel;
//Ball ball01;
ArrayList<Ball> balls;

void setup() {
  size(500, 500);
  ballStartLoc = new PVector(0, width/2);
  ballStartVel = new PVector(0, 0);
  balls = new ArrayList<Ball>();
  balls.add(new Ball(ballStartLoc, ballStartVel, 0));
  //ball01 = new Ball(ballStartLoc, ballStartVel, 0);
}

void draw() {
  background(255);
  fill(0);
  translate (width/2, height);
  ellipse(0, 0, 4, 4);
  mouse = new PVector(mouseX, mouseY);
  center = new PVector(width/2, height);
  mouse.sub(center);
  textAlign(CENTER, CENTER);
  text("Click to throw a ball!", 0, -height/2);
  for (int i = 0; i < balls.size(); i++) {
   balls.get(i).displayBall(); 
  }
  stroke(0);
  line(0, 0, mouse.x, mouse.y);
  //ball01.displayBall();
}

void mousePressed() {
  mouseIsPressed = true;
}
