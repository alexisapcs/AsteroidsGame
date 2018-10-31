class Spaceship extends Floater  
{
  public Spaceship() {
    corners = 4;
    int[] xS = {9, -9, -4, -9};
    int[] yS = {0, 7, 0, -7};
    xCorners = xS;   
    yCorners = yS;
    myColor = color(50, 50, 50, 120);   
    myCenterX = width/2;
    myCenterY = height/2;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
  }
  public void turn(int nDegreesOfRotation) {
    myPointDirection+=nDegreesOfRotation;
  }
  public void accelerate (double dAmount) {  
     double dRadians = myPointDirection*(Math.PI/180);
     //change coordinates of direction of travel
     if (myDirectionX <= 16.0 && myDirectionX >= -16.0) {
       myDirectionX += ((dAmount) * Math.cos(dRadians));
     } else if (myDirectionX > 16.0) {
       myDirectionX = 15;
     } else if (myDirectionX < -16.0) {
       myDirectionX = -15;
     }
     print(myDirectionX);
     if (myDirectionY <= 16.0 && myDirectionY >= -16.0) {
       myDirectionY += ((dAmount) * Math.sin(dRadians));
     } else if (myDirectionY > 16.0) {
       myDirectionY = 15;
     } else if (myDirectionY < -16.0) {
       myDirectionY = -15;
     }
     println(", " + myDirectionY);
   }
  public void decelerate (double dAmount) {  
     double dRadians = myPointDirection*(Math.PI/180);
     //change coordinates of direction of travel
     myDirectionX -= ((dAmount) * Math.cos(dRadians));
     myDirectionY -= ((dAmount) * Math.sin(dRadians));
   }
  public void setX(int x) {myCenterX = x;} 
  public int getX() {return (int)myCenterX;}
  public void setY(int y) {myCenterY = y;}  
  public int getY() {return (int)myCenterY;}
  public void setDirectionX(double x) {myDirectionX = x;}
  public double getDirectionX() {return myDirectionX;}
  public void setDirectionY(double y) {myDirectionY = y;}
  public double getDirectionY() {return myDirectionY;}
  public void setPointDirection(int degrees) {myPointDirection = degrees;}  
  public double getPointDirection() {return myPointDirection;}
}
