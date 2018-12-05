class Asteroid extends Floater 
{
  private float myRotateSpeed;
  public Asteroid()
  {
    //corners = 12;
    //int[] xS = {0, 2, 6, 4, 6, 2, 0, -2, -6, -4, -6, -2};
    //int[] yS = {4, 6, 2, 0, -2, -6, -4, -6, -2, 0, 2, 6};
    corners = 10;
    //int[] xS = {0, 6, 6, 4, 2, 0, -2, -4, -6, -6};
    //int[] yS = {6, 0, -2, -4, -4, -2, -4, -4, -2, 0};
    int[] xS = {0, 12, 12, 8, 4, 0, -4, -8, -12, -12};
    int[] yS = {12, 0, -4, -8, -8, -4, -8, -8, -4, 0};
    xCorners = xS;   
    yCorners = yS;
    myColor = color(255, 0, 0);   
    myCenterX = (int)(Math.random()*width);
    myCenterY = (int)(Math.random()*height);
    myDirectionX = (float)(Math.random()*2)-1;
    myDirectionY = (float)(Math.random()*2)-1;
    myPointDirection = 0;
    myRotateSpeed = (float)(Math.random()*3)-1;
    if (myRotateSpeed == 0) {
      myRotateSpeed = (float)(Math.random()*3)-1;
    }
  }
  public Asteroid(int look)
  {
    corners = 10;
    int[] xS = {0, 48, 48, 32, 16, 0, -16, -32, -48, -48};
    int[] yS = {48, 0, -16, -32, -32, -16, -32, -32, -16, 0};
    //int[] xS = {0, 24, 24, 16, 8, 0, -8, -16, -24, -24};
    //int[] yS = {24, 0, -8, -16, -16, -8, -16, -16, -8, 0};
    xCorners = xS;   
    yCorners = yS;
    myColor = look;   
    myCenterX = width/2;
    myCenterY = height/2;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
    myRotateSpeed = 0;
  }
  public void move()
  {
    myPointDirection+=myRotateSpeed;
    myCenterX += myDirectionX;
    myCenterY += myDirectionY;
    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
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
