//your variable declarations here
Spaceship ss;
boolean wIsPressed, aIsPressed, dIsPressed = false;
//Asteroid a[] = new Asteroid[20];
ArrayList<Asteroid> aList = new ArrayList<Asteroid>();
Star s[] = new Star[200];

public void setup() 
{
  size(500, 500);
  ss = new Spaceship();
  ss.setTopSpeed(15.0, 15.0);
  for (int i = 0; i < 200; i++) {
    s[i] = new Star();
  }
  for (int i = 0; i < 20; i++) {
    aList.add(0, new Asteroid());
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
  for (int i = 0; i < aList.size(); i++) {
    aList.get(i).show();
    aList.get(i).move();
    if (dist(ss.getX(), ss.getY(), aList.get(i).getX(), aList.get(i).getY()) <= 20) {
      aList.remove(i);
      i--;
    }
  }
  accelerate();
}
public void mousePressed()
{
  for (int i = 0; i<aList.size(); i++) {
    aList.get(i).setX((int)(Math.random()*width));
    aList.get(i).setY((int)(Math.random()*height));;
  }
}

public void accelerate() {
    double playerAngle = ss.getPointDirection()*(Math.PI/180);
    // debug stuff
    for(int i = 0; i < 6; i++) {System.out.println("");}
    System.out.println("angle (radians): " + playerAngle); // angle (radians)
    System.out.println("max x: " + ss.getTopSpeedX() + ",  max y: " + ss.getTopSpeedY()); // converted top speeds
    System.out.println("speed x: " + ss.getDirectionX() + ",  speed y: " + ss.getDirectionY()); // actual speeds
    
    // angles cannot go over 2PI radians
    if (playerAngle > Math.PI*2) {
        ss.setPointDirection(0);
    }
    if (playerAngle < -Math.PI*2) {
        ss.setPointDirection(0);
    }
    
    // turn
    if (aIsPressed) { ss.turn(-5); }
    if (dIsPressed) { ss.turn(5); }
    
    // accel and deccel
    if (wIsPressed) {
        if (playerAngle < Math.PI/2 && playerAngle > -Math.PI/2 || 
            playerAngle < 2*Math.PI && playerAngle > 3*Math.PI/2 ||
            playerAngle < -3*Math.PI/2 && playerAngle > -2*Math.PI) {
            if (ss.getDirectionX() < ss.getTopSpeedX()) {
                ss.accelerate(0.15, 'x');
            }
        }
        if (playerAngle < 3*Math.PI/2 && playerAngle > Math.PI/2 || 
            playerAngle < -Math.PI/2 && playerAngle > -3*Math.PI/2) {
            if (ss.getDirectionX() > -ss.getTopSpeedX()) {
                ss.accelerate(0.15, 'x');
            }
        }
        if (playerAngle > Math.PI && playerAngle < 2*Math.PI ||
            playerAngle > -Math.PI && playerAngle < 0) {
            if (ss.getDirectionY() > -ss.getTopSpeedY()) {
                ss.accelerate(0.15, 'y');
            }
        }
        if (playerAngle > 0 && playerAngle < Math.PI ||
            playerAngle > -2*Math.PI && playerAngle < -Math.PI) {
            if (ss.getDirectionY() < ss.getTopSpeedY()) {
                ss.accelerate(0.15, 'y');
            }
        }
    } else if (!wIsPressed) {
        if (ss.getDirectionX() > 0) {
            //Player.accelerate(-0.25, "x");
            ss.setDirectionX(ss.getDirectionX() - 0.25);
        } else if (ss.getDirectionX() < 0) {
            //Player.accelerate(-0.25 , "x2");
            ss.setDirectionX(ss.getDirectionX() + 0.25);
        }
        if (ss.getDirectionY() > 0) {
            //Player.accelerate(-0.25 , "y");
            ss.setDirectionY(ss.getDirectionY() - 0.25);
        } else if (ss.getDirectionY() < 0) {
            //Player.accelerate(0.25 , "y2");
            ss.setDirectionY(ss.getDirectionY() + 0.25);
        }
        if (ss.getDirectionY() > -0.2 && ss.getDirectionY() < 0.2) {
            ss.setDirectionY(0);
        }
        if (ss.getDirectionX() > -0.2 && ss.getDirectionX() < 0.2) {
            ss.setDirectionX(0);
        }
    }
}

// keypressed and released stuff
void keyPressed() {
    if ( key == 'w' || key == 'W' || keyCode == UP ) { wIsPressed = true; println("hi");} else 
    if ( key == 'a' || key == 'A' || keyCode == LEFT ) { aIsPressed = true; } else
    if ( key == 'd' || key == 'D' || keyCode == RIGHT ) { dIsPressed = true; }
    if ( key == 'h' || key == 'H' || keyCode == SHIFT ) {
      ss.setX((int)(Math.random()*width));
      ss.setY((int)(Math.random()*height));
      ss.setDirectionX(0);
      ss.setDirectionY(0);
      ss.setPointDirection((int)(Math.random()*36)*10);
      println(ss.getPointDirection());
      for (int i = 0; i < aList.size(); i++) {
        aList.get(i).setX((int)(Math.random()*width));
        aList.get(i).setY((int)(Math.random()*height));;
      }
    }
}

void keyReleased() {
    if ( key == 'w' || key == 'W' || keyCode == UP ) { wIsPressed = false; println("bye");} else 
    if ( key == 'a' || key == 'A' || keyCode == LEFT ) { aIsPressed = false; } else
    if ( key == 'd' || key == 'D' || keyCode == RIGHT ) { dIsPressed = false; }
}
/*
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
    ss.setPointDirection((int)(Math.random()*36)*10);
    println(ss.getPointDirection());
    for (int i = 0; i<20; i++) {
      aList.get(i).setX((int)(Math.random()*width));
      aList.get(i).setY((int)(Math.random()*height));;
    }
  }
}
*/
