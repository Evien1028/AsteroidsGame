Star[]solvent = new Star[200];
Spaceship fly = new Spaceship();
boolean press = false;
ArrayList <Asteroid> petals = new ArrayList <Asteroid>();

public void setup () 
{
  size(800,800);
  for(int i = 0; i < solvent.length; i++)
    solvent[i] = new Star();
  for(int i = 0; i < 10; i++)
    petals.add(new Asteroid());
}

public void draw() 
{
  background(0);
  for(int i = 0; i < solvent.length; i++)
    solvent[i].show();
  fill(255);
  fly.show();
  if (press == true){
    fly.move();
  }
  for(int i = 0; i < petals.size(); i++){
    petals.get(i).show();
    petals.get(i).move();
    if(dist((float)petals.get(i).getX(), (float)petals.get(i).getY(), (float)fly.getX(), (float)fly.getY())<10)
      petals.remove(i);
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
