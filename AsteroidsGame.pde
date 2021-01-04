Spaceship feiChuan;

Star[] xing = new Star[666];

ArrayList <Asteroid> xiaoXing = new ArrayList <Asteroid>();
boolean wButton, aButton, sButton, dButton;

public void setup() 
{

  size(500, 500);
  background (0);
  feiChuan = new Spaceship();

  for(int i = 0; i < xing.length;i++){

    xing[i]= new Star();   

  }

  for(int i = 0; i < (int) (Math.random()*5)+3; i++){

  xiaoXing.add(new Asteroid());

  }

  wButton = false;

  aButton = false;

  sButton = false;

  dButton = false;

 }

public void draw() 

{

  background(0);

  for(int i = 0; i < xing.length; i++){

    xing[i].show();

  }

 for(int i = 0; i < xiaoXing.size(); i++){

    xiaoXing.get(i).move();

    xiaoXing.get(i).show();

  }
 

  if(wButton){

    feiChuan.accelerate(0.2);

  }

 if(aButton){

    feiChuan.turn(-3);

  }

 if(sButton){

    feiChuan.accelerate(-0.2);

  }

 if(dButton){

    feiChuan.turn(3);

  }
  feiChuan.move();

  feiChuan.show();

}

public void keyPressed(){

  if(key == 'w')wButton = true;

  if(key == 'a')aButton = true;

  if(key == 's')sButton = true;

  if(key == 'd')dButton = true;

  if(key == 'h'){
    feiChuan.setXspeed(0);
  }
}
public void keyReleased(){
  if(key == 'w')wButton = false;

  if(key == 'a')aButton = false;

  if(key == 's')sButton = false;

  if(key == 'd')dButton = false;
}
