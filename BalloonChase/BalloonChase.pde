Chaser chaser;
//1.Spawn 50 balloons
//1.a. Create ballons array
Balloon[] balloons = new Balloon[50];
public void setup() {
  size(600, 600);
  //1.b. call spawnBalloons
  spawnBalloons();
  chaser = new Chaser();
}

public void draw() {
  background(220);
  //1.d. loop through balloons to draw, move all
  for (int i = 0; i < balloons.length; i++) {
    balloons[i].draw();
    balloons[i].move();
  }
  chaser.chase(balloons);
  chaser.move();
  chaser.draw();
}

private void spawnBalloons() {
  //1.c. fill balloons array with balloons
  for (int i = 0; i < balloons.length; i++) {
    balloons[i] = new Balloon((int)random(width), (int)random(height));
    System.out.println(i + 1 + ". " + balloons[i].size);
  }
}
