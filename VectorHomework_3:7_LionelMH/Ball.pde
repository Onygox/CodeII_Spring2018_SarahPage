class Ball {
  
  PVector location, velocity;
  color ballColor;
  
  Ball (PVector loc, PVector vel, color col) {
    location = loc;
    velocity = vel;
    ballColor = col;
  }
  
  void displayBall() {
    noStroke();
    fill(ballColor);
    ellipse(location.x, location.y, 20, 20);
    location.add(velocity);
    if (mouseIsPressed) {
      resetBall(mouse.x, mouse.y);
      mouseIsPressed = false;
    }
  }
  
  void resetBall(float vecx, float vecy) {
    location = new PVector(0, 0);
    velocity = new PVector(vecx/15, vecy/15);
    ballColor = color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255))); 
  }
  
}