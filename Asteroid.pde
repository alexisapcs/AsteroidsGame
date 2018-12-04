class Asteroid extends Floater 
{
  private float myRotateSpeed, myPace;
  private int myMove;
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
    myDirectionX = (float)(Math.random()*5)-2;
    myDirectionY = (float)(Math.random()*5)-2;
    myPointDirection = 0;
    myRotateSpeed = (float)(Math.random()*3)-1;
    if (myRotateSpeed == 0) {
      myRotateSpeed = (float)(Math.random()*3)-1;
    }
    myPace = (float)(Math.random()*2)+1;
  }
  public void move()
  {
    myPointDirection+=myRotateSpeed;
    myCenterX += myDirectionX;
    myCenterY += myDirectionY;
    /*
    myMove = (int)(Math.random()*4)+1;
    if (myMove == 1) {
      myCenterX += myPace;    
      myCenterY += myPace; 
    } else if (myMove == 2) {
      myCenterX -= myPace;    
      myCenterY -= myPace; 
    } else if (myMove == 3) {
      myCenterX += myPace;    
      myCenterY -= myPace; 
    } else if (myMove == 4) {
      myCenterX -= myPace;    
      myCenterY += myPace; 
    }    
    */
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
