class Star{
 private float myX, myY;
 public Star(){
   myX = (float)Math.random()*1000;
   myY = (float)Math.random()*1000;
 }
 public void show(){
   noStroke();
   fill(255);
   ellipse(myX,myY,3,3);
 }
}
