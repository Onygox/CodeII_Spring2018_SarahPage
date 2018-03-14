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
    println(location.x, location.y);
    if (mouseIsPressed) {
      resetBall(mouse.x, mouse.y);
      mouseIsPressed = false;
    }
    if (location.x - 10 < -250 || location.x + 10 > 250) {
     velocity.x = -velocity.x; 
    }
    if (location.y > 0 || location.y - 10 < -500) {
     velocity.y = -velocity.y; 
    }
  }
  
  void resetBall(float vecx, float vecy) {
    location = new PVector(0, 0);
    velocity = new PVector(vecx/15, vecy/15);
    ballColor = color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255))); 
  }
  
}