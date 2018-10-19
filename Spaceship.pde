class Spaceship extends Floater  
{
  int myX, myY;
  Spaceship() {
    corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int myColor;   
  protected double myCenterX, myCenterY; //holds center coordinates   
  protected double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
  protected double myPointDirection;
  }
  public void setX(int x) {
    myX = x;
  } 
  public int getX() {
    return myX;
  }
  public void setY(int y) {
    myY = y;
  }  
  public int getY() {
    return myY;
  }
  public void setDirectionX(double x) {
    myDirectionX = x;
  }
  public double getDirectionX() {
    return myDirectionX;
  }
  public void setDirectionY(double y) {
    myDirectionY = y;
  }
  public double getDirectionY() {
    return myDirectionY;
  }
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }  
  public double getPointDirection() {
    return myPointDirection;
  }
}
