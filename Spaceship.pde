class Spaceship extends Floater  
{
  public double topXSpeed, topYSpeed;
  public Spaceship() {
    //corners = 4;
    //int[] xS = {9, -9, -4, -9};
    //int[] yS = {0, 7, 0, -7};
    corners = 11;
    int[] xS = {-6, -6, -4, -2, 2, 6, 6, 2, -2, -4, -6, -6};
    int[] yS = {0, 2, 8, 10, 12, 12, -12, -12, -10, -8, -2, 0};
    //int[] xS = {-6, -4, -2, 2, 6, 6, 2, -2, -4, -6, -6,};
    //int[] yS = {-2, -8, -10, -12, -12, 12, 12, 10, 8, 2, 0};
    xCorners = xS;   
    yCorners = yS;
    myColor = color(200, 200, 200);   
    myCenterX = width/2;
    myCenterY = height/2;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
  }
  public void turn(int nDegreesOfRotation) {
    myPointDirection+=nDegreesOfRotation;
    if (myPointDirection == -360 || myPointDirection == 360) {
      myPointDirection = 0;
    }
  }
  public void accelerate (double dAmount, char type) {  
     double dRadians = myPointDirection*(Math.PI/180);
     //change coordinates of direction of travel
      if (type == 'x') {
          myDirectionX += ((dAmount) * Math.cos(dRadians));
      }
      if (type == 'y') {
          myDirectionY += ((dAmount) * Math.sin(dRadians)); 
      }   
   }
  public void decelerate (double dAmount) {  
     double dRadians = myPointDirection*(Math.PI/180);
     //change coordinates of direction of travel
     if (myDirectionX != 0 && myDirectionX > 0.0) {
       if (myPointDirection > -180 && myPointDirection < 0) {}
       
       myDirectionX -= ((dAmount) * Math.cos(dRadians));
     } else if (myDirectionX != 0 && myDirectionX < 0.0) {
       myDirectionX += ((dAmount) * Math.cos(dRadians));
     }
     if (myDirectionY != 0 && myDirectionY > 0.0) {
       myDirectionY -= ((dAmount) * Math.sin(dRadians));
     } else if (myDirectionY != 0 && myDirectionY < 0.0) {
       if ((myPointDirection > -180 && myPointDirection < 0) || (myPointDirection > 180 && myPointDirection < 360)) {
         myDirectionY -= ((dAmount) * Math.sin(dRadians));
       } else if ((myPointDirection < -180 && myPointDirection > -360) || (myPointDirection < 180 && myPointDirection > 0)) {
         myDirectionY += ((dAmount) * Math.sin(dRadians));
       }
     }
     //myDirectionY -= ((dAmount) * Math.sin(dRadians));
     print(myDirectionX);
     println(", " + myDirectionY);
   }
  public void setX(int x) {myCenterX = x;} 
  public int getX() {return (int)myCenterX;}
  public void setY(int y) {myCenterY = y;}  
  public int getY() {return (int)myCenterY;}
  public void setTopSpeed(double x, double y) {topXSpeed = x; topYSpeed = y;}
  public double getTopSpeedX() {return topXSpeed;}
  public double getTopSpeedY() {return topYSpeed;}
  public void setDirectionX(double x) {myDirectionX = x;}
  public double getDirectionX() {return myDirectionX;}
  public void setDirectionY(double y) {myDirectionY = y;}
  public double getDirectionY() {return myDirectionY;}
  public void setPointDirection(int degrees) {myPointDirection = degrees;}  
  public double getPointDirection() {return myPointDirection;}
}
