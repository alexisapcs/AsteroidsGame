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
    corners = 30;
    int[] xS = {0, -2, -4, -7, -10, -13, -16, -19, -21, -22, -22, -21, -19, -16, -10, 0, 10, 16, 19, 21, 22, 22, 21, 19, 16, 13, 10, 7, 4, 2};
    int[] yS = {-10, -12, -14, -16, -17, -17, -16, -14, -11, -7, -3, 1, 4, 7, 11, 17, 11, 7, 4, 1, -3, -7, -11, -14, -16, -17, -17, -16, -14, -12};
    //int[] xS = {0, -4, -8, -14, -20, -26, -32, -38, -42, -46, -46, -42, -38, -32, -20, 0, 20, 32, 38, 42, 44, 44, 42, 38, 32, 26, 20, 14, 8, 4};
    //int[] yS = {-7, -11, -14, -16, -17, -17, -16, -14, -11, -7, -3, 1, 4, 8, 12, 17, 12, 8, 4, 1, -3, -7, -11, -14, -16, -17, -17, -16, -14, -11};
    for (int i = 0; i < corners; i++) { yS[i] = yS[i]*4; xS[i] = xS[i]*4;}
    xCorners = xS;   
    yCorners = yS;
    myColor = look;   
    myCenterX = 0;
    myCenterY = height/2;
    myDirectionX = 2;
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
