class Asteroid extends Floater
{
   private double rotSpeed; //randomly + or -
   public Asteroid(){
     corners = 10;
     xCorners = new int[]{0,4,6,7,5,0,-5,-7,-6,-4};
     yCorners = new int[]{4,7,5,0,-4,-10,-4,0,5,7};
     rotSpeed = (Math.random()*10)+5;
     myColor = 200;
     myCenterX = (Math.random()*800);
     myCenterY = (Math.random()*800);
     myXspeed = myYspeed = (Math.random()*2)+2;
     myPointDirection = (Math.random()*360);
   }
   public void move(){
     turn(rotSpeed);
     super.move();
   }
} 
   
   
