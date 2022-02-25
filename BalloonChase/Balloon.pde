public class Balloon {
  public PVector pos, vel, acc;
  public int size, loonSize, bigLoon;
  public float MAX_SPEED = 5.0, x = random(width), y = random(height);
  public Balloon biggestBalloon;
  public boolean active;
  


  public Balloon(int x, int y) {
    size = (int) random(3, 15);
    pos = new PVector(x, y);
    vel = PVector.random2D().mult(MAX_SPEED);
    acc = new PVector(0, 0);
  }

  public void move() {
    vel.add(acc);
    pos.add(vel);
  }

  public void draw() {
    fill(255, 0, 0);
    circle(pos.x, pos.y, size);
  }
}
