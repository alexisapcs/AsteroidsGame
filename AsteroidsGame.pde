//your variable declarations here
Spaceship ss;
Asteroid a = new Asteroid();
Star s[] = new Star[200];

public void setup() 
{
  size(500, 500);
  ss = new Spaceship();
  for (int i = 0; i<200; i++) {
    s[i] = new Star();
  }
}
public void draw() 
{
  //fill(color(0, 0, 0, 10));
  noStroke();
  fill(color(0, 0, 0, 100));
  rect(0, 0, width, height);
  color(0, 0, 0, 80);
  for (int i = 0; i<200; i++) {
    s[i].show();
  }
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
  if (key == 'a' || key == 'A') {
    ss.turn(-10);
    println(ss.myPointDirection);
    
  } else if (key == 'd' || key == 'D') {
    ss.turn(10);
    println(ss.myPointDirection);
  }

  if (key == 'w' || key == 'W') {
    ss.accelerate(0.5);
  } else if (key == 's' || key == 'S') {
    ss.decelerate(0.5);
  }
  
  if (key == 'h' || key == 'H') {
    ss.setX((int)(Math.random()*width));
    ss.setY((int)(Math.random()*height));
    ss.setDirectionX(0);
    ss.setDirectionY(0);
    ss.setPointDirection((int)(Math.random()*360));
  }
}
