class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star() 
  {
    myX = (int)(Math.random()*width);
    myY = (int)(Math.random()*height);
  }
  public void show() 
  {
    fill(((int)(Math.random()*10)+245), ((int)(Math.random()*10)+245), ((int)(Math.random()*150)+100), ((int)(Math.random()*55)+50));
    ellipse(myX, myY, 3, 3);
  }
}
