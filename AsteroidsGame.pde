Spaceship ship = new Spaceship();
Star[] stars;
ArrayList<Asteroid> ast = new ArrayList<Asteroid>();
boolean Accel, Deccel, Rright, Rleft, Shoot;

  public void setup() 
  {
    size(1000,700);
    stars = new Star[200];
    for(int i = 0; i < stars.length; i++){
      stars[i] = new Star();
    }
    //asteroids
    for(int i = 0; i < 50; i++){
      ast.add(new Asteroid());
    }
  }

public void draw() 
{
  background(81,75,75);
  for(int i = 0; i< stars.length; i++){
    stars[i].show();
  }
  if(Accel == true){
    ship.accelerate(.15);
    ship.show();
  }
  ship.move();
  ship.show();
  

  //array for asteroids 
  for(int i = 0; i < ast.size(); i++){
    ast.get(i).move();
    ast.get(i).show();
     //ship removes asteroid
    if(dist(ship.getX(), ship.getY(), ast.get(i).getX(), ast.get(i).getY()) < 30){
      ast.remove(i);
    }
  }
  if(ast.size() < 15){
    ast.add(new Asteroid());
    ast.add(new Asteroid());
  }

  //booleans

  if(Deccel == true){
    ship.accelerate(-0.1); 
  }
  if(Accel == true){
    ship.accelerate(0.1);
  }
  if(Rright == true)ship.turn(3);
  if(Rleft == true)ship.turn(-3);
  
  
}

  public void keyPressed(){
    if(keyCode == UP){Accel=true;}
    if(keyCode == DOWN){Deccel=true;}
    if(keyCode == RIGHT){Rright=true;}
    if(keyCode == LEFT){Rleft=true;}
    if(keyCode == 72){
      ship.setX(500);
      ship.setY(500);
      ship.setDirection(0);
      ship.setSpeed(0);
      ship.setDirection((int)(Math.random()*360));
    }
  }

  //public void keyTyped() {}
  public void keyReleased(){
    if(keyCode == UP){Accel=false;}
    if(keyCode == DOWN){Deccel=false;}
    if(keyCode == RIGHT){Rright=false;}
    if(keyCode == LEFT){Rleft=false;}
    
  }
