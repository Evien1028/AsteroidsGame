class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 10;
      xCorners= new int[]{5,15,0,0,-10,-5,-10,0,0,15};
      yCorners = new int[]{0,-20,-10,-5,-10,0,10,5,10,20};
      myColor = 255;
      myCenterX = myCenterY = 400;
      myXspeed = myYspeed = 0;
      myPointDirection = 270;
    }
    public void reset(){
      myXspeed = myYspeed = 0;
      myCenterX = (int)(Math.random()*500)+150;
      myCenterY = (int)(Math.random()*500)+150;
      myPointDirection = 270;
    }
    public double getSpeed(){
      return myXspeed;
    }
}
