/**
 * Easing. 
 * 
 * Move the mouse across the screen and the symbol will follow.  
 * Between drawing each frame of the animation, the program
 * calculates the difference between the position of the 
 * symbol and the cursor. If the distance is larger than
 * 1 pixel, the symbol moves part of the distance (0.05) from its
 * current position toward the cursor. 
 */
 
float x;
float y;
float easing = 0.05;

float positionX;
float positionY;

void setup() {
  size(640, 360); 
  noStroke();  
  positionX = width/2;
  positionY = height/2;
}

void draw() { 
  background(51);
  
  if (positionY > height/2) {
    positionY--;
  } else {
    positionY++;
  }
  
  if (positionX > width/2) {
    positionX--;
  } else {
    positionX++;
  }
  
  float targetX = positionX;
  float dx = targetX - x;
  x += dx * easing;
  
  float targetY = positionY;
  float dy = targetY - y;
  y += dy * easing;
  
  ellipse(x, y, 66, 66);
}

void keyPressed() {
  if (keyCode == UP) {
    positionY -= 40;
  }
  if (keyCode == DOWN) {
    positionY += 40;
  }
  if (keyCode == LEFT) {
    positionX -= 60;
  }
  if (keyCode == RIGHT) {
    positionX += 60;
  }
}
  
  
  
