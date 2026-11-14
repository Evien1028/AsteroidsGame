//your variable declarations here
Star[]solvent = new Star[200];
Spaceship fly = new Spaceship();
boolean press = false;

public void setup () 
{
  size(800,800);
  for(int i = 0; i < solvent.length; i++)
    solvent[i] = new Star();
}

public void draw() 
{
  background(0);
  for(int i = 0; i < solvent.length; i++)
    solvent[i].show();
  fill(255);
  fly.show();
  if(press == true){
    fly.move();
    }
}

public void keyPressed(){
  if(key == 'w'){
    press = true;
    fly.move();
    fly.accelerate(2.5);
  }
  if(key == 'd'){
    fly.turn(15);
  }
  if(key == 'a'){
    fly.turn(345);
  }
  if(key == 's'){
    fly.reset(); 
  }
}
