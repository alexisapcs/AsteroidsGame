class Asteroid extends Floater 
{
  private int myRotateSpeed;
  public Asteroid()
  {
    corners = 12;
    int[] xS = {0, 2, 6, 4, 6, 2, 0, -2, -6, -4, -6, -2};
    int[] yS = {4, 6, 2, 0, -2, -6, -4, -6, -2, 0, 2, 6};
    //corners = 10;
    //int[] xS = {0, 6, 6, 4, 2, 0, -2, -4, -6, -6};
    //int[] yS = {6, 0, -2, -4, -4, -2, -4, -4, -2, 0};
    xCorners = xS;   
    yCorners = yS;
    myColor = color(255, 0, 0);   
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
