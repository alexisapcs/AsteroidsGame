class Spaceship extends Floater  
{
  public Spaceship() {
    corners = 4;
    int[] xS = {9, -9, -4, -9};
    int[] yS = {0, 7, 0, -7};
    xCorners = xS;   
    yCorners = yS;
    /*
      xCorners[0] = 9;
      yCorners[0] = 0;
      xCorners[1] = -9;
      yCorners[1] = 7;
      xCorners[2] = -4;
      yCorners[2] = 0;
      xCorners[3] = -9;
      yCorners[3] = -7;
      */
    myColor = color(255, 0, 0);   
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
     myDirectionX += ((dAmount) * Math.cos(dRadians));
     myDirectionY += ((dAmount) * Math.sin(dRadians));
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
