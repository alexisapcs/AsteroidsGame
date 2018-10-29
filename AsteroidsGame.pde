//your variable declarations here
Spaceship ss = new Spaceship();

public void setup() 
{
  size(500, 500);
  ss = new Spaceship();
}
public void draw() 
{
  background(255);
  fill(color(255, 255, 255, 10));
  noStroke();
  rect(0, 0, width, height);
  color(255, 255, 255, 80);
  ss.show();
  ss.move();
}

public void keyPressed() {
  if (key == 'a') {
    ss.turn(-10);
    System.out.println("Left");
  } else if (key == 'd') {
    ss.turn(10);
    System.out.println("Right");
  }
  
  if (key == 'w') {
    ss.accelerate(1);
    System.out.println("Go");
  }
  
  if (key == 'h') {
    ss.setX((int)(Math.random()*width));
    ss.setY((int)(Math.random()*height));
    ss.setDirectionX(0);
    ss.setDirectionY(0);
    ss.setPointDirection((int)(Math.random()*360));
  }
}
