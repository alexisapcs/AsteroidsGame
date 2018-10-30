class Asteroid extends Floater 
{
  private int myRotateSpeed;
  public Asteroid()
  {
    corners = 12;
    int[] xS = {0, 1, 3, 2, 3, 1, 0, -1, -3, -2, -3, -1};
    int[] yS = {2, 3, 1, 0, -1, -3, -2, -3, -1, 0, 1, 3};
    xCorners = xS;   
    yCorners = yS;
    //corners = 10;
    //int[] xS = {0, 1, 2, 3, 3, 0, -3, -3, -2, -1};
    //int[] yS = {1, 2, 2, 1, 0, -3, 0, 1, 2, 2};
    myColor = color(193, 193, 193);   
    myCenterX = (int)(Math.random()*width);
    myCenterY = (int)(Math.random()*height);
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
    myRotateSpeed = (int)(Math.random()*2)-1;
    println(myRotateSpeed);
  }
  public void move()
  {
    myPointDirection+=myRotateSpeed;
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
