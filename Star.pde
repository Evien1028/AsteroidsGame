public class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  private color c;
  public Star(){
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
    c = color((int)(Math.random()*255),0,(int)(Math.random()*255));
  }

  public void show(){
    noStroke();
    fill(c);
    ellipse(myX, myY, 3, 3);
  }
}
