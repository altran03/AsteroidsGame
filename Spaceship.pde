class Spaceship extends Floater {
  public Spaceship(){
    myCenterX =500;
    myCenterY =500;
    corners = 4;
    xCorners = new int []{-8,16,-8,-2};
    yCorners = new int [] {-8,0,8,0};
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection=0;
  }
  public void setXspeed(double x){
    myXspeed = x;
  }
  public void hyperspace(){
    myXspeed = 0;
    myYspeed=0;
    myCenterX = 500;
    myCenterY = 500;
    myPointDirection = 0;
  }
  public int getX(){
    return (int) myCenterX;
  }
  public int getY(){
    return (int) myCenterY;
  }
  public double getDirection(){
    return (double) myPointDirection;
  }
  public void setDirection(double x){
    myPointDirection = x;
  }
  public void setX (double x){
    myCenterX = x;
  }
  public void setY (double x){
    myCenterY = x;
  }
  public void setSpeed (int x){
    myXspeed = x;
    myYspeed = x;
  }
}
