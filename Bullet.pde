class Bullet extends Floater {
  public Bullet(Spaceship ship){
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    myPointDirection = ship.getDirection();
    myXspeed = 10* Math.cos(myPointDirection*(Math.PI/180)) + ship.getXspeed();
    myYspeed = 10* Math.sin(myPointDirection*(Math.PI/180)) + ship.getYspeed();
    myColor = #FF1F1F;
    //this.accelerate(6);
  } 
    public void show ()  //Draws the floater at the current position  
  {        
    noStroke();
    fill(myColor);       
   // translate((float)myCenterX, (float)myCenterY);
   // ellipse (0,0,10,10);
    ellipse((float)(myCenterX+Math.cos(myPointDirection*(Math.PI/180))),(float)(myCenterY+Math.sin(myPointDirection*(Math.PI/180))),10,10);

    //rotate(-1*dRadians);
    //translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
  public int getX(){
    return (int)myCenterX;
  }
  public int getY(){
    return (int)myCenterY;
  }
  public void setDirection(double x){
    myPointDirection = x;
  }
  public double getDirection(){
    return myPointDirection;
  }
public void move(){
    //myPointDirection = 
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
}
