class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star(){
    myX = (int)(Math.random() * 500);
    myY = (int)(Math.random() * 500);
  }
  public void show(){
    stroke((int)(Math.random()* 255),(int)(Math.random()* 255), (int)(Math.random()* 255));
    fill(255, 255, 255);
    ellipse(myX, myY, 5, 5);
  }
}

