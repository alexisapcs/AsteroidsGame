class Bullet extends Floater
{
  public Bullet() 
  {
    //corners = 20;
    //int[] xS = {0, 1, -1, 0, 0, 1, 0, -1, 0, 0, 1, 0, -1, 0, 0, 1, 0, -1, 0, 0};
    //int[] yS = {5, 4, 4, 5, -1, -3, -1, -3, -1, -2, -5, -2, -5, -2, -3, -6, -3, -6, -3};
    corners = 7;
    int[] xS = {7, 4, 4, -7, -7, 4, 4};
    int[] yS = {0, 3, 1, 1, -1, -1, -3};
    xCorners = xS;   
    yCorners = yS;
    myColor = color(255, 255, 255);   
    myCenterX = 0;
    myCenterY = 0;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
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
