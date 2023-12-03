class Asteroid extends Floater {
  private double rotSpeed;
  public Asteroid(){
    rotSpeed = (int)(Math.random()*9)-4;
    myCenterX = (int)(Math.random()*1000);
    myCenterY = (int)(Math.random()*700);
    corners = 8;
    xCorners = new int[] {-9, 7, 13, 5, -11, -5, -5, 10};
    yCorners = new int[] { -5, -8, 7, 10, 8, 0, 0 ,8};
    myPointDirection = Math.random()*2*PI;
    myColor=(#d3d3d3); 
    
  }
  public void move(){
  myXspeed += Math.random()*0.1 - 0.05;
  myYspeed += Math.random()*0.1 - 0.05;
  myCenterX += myXspeed;    
  myCenterY += myYspeed;
  turn(rotSpeed);
  super.move();
  }
  public int getY(){
  return (int)myCenterY;
}  
  public int getX(){
  return (int)myCenterX;
}  
}
