class Bullet extends Floater
{  
  public Bullet(Spaceship theShip) 
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
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + theShip.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) + theShip.getDirectionY();
  }
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX > width)
    {     
      bList.remove(this);    
    }    
    else if (myCenterX<0)
    {     
      bList.remove(this);     
    }    
    if(myCenterY > height)
    {    
      bList.remove(this);   
    } 
    
    else if (myCenterY < 0)
    {     
      bList.remove(this);    
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
