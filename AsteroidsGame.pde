//your variable declarations here
Spaceship ss = new Spaceship();
Asteroid a = new Asteroid();

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
  a.show();
}
public void mousePressed()
{
  a.setX((int)(Math.random()*width));
  a.setY((int)(Math.random()*height));;
  }
public void keyPressed() {
  if (key == 'a') {
    ss.turn(-10);
  } else if (key == 'd') {
    ss.turn(10);
  }

  if (key == 'w') {
    ss.accelerate(1);
  } else if (key == 's') {
    ss.decelerate(1);
  }
  
  if (key == 'h') {
    ss.setX((int)(Math.random()*width));
    ss.setY((int)(Math.random()*height));
    ss.setDirectionX(0);
    ss.setDirectionY(0);
    ss.setPointDirection((int)(Math.random()*360));
  }
}
