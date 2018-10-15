void setup()
{
  noLoop();
  background(163, 57, 45);
  size(500,600);
}
void draw()
{
  background(163, 57, 45);
  int total= 0;
  
  for(int y = 30; y <= 500; y+= 80) //6 rows
  {
    for(int x = 30; x <= 500 ; x+= 80)//6 collums
    {
      Die Frida = new Die(x,y);//
      Frida.show();
      Frida.roll();//
      total = total + Frida.myDots;
    }
  }
  scoreBoard(total);

}

void mousePressed()
{
  redraw();
}

class Die //models one single dice cube
{
  int myX, myY, myDots;
  
  Die(int x, int y) //constructor
  {
    myDots = (int)(Math.random()*6)+1;
    myX=x;
    myY=y;
  }
  void roll()
  {
    if (myDots==1) {
      ellipse(myX+20, myY+20, 5, 5);//middle
    }
    if (myDots==2) {
      ellipse(myX+10, myY+10, 5, 5);//top left
      ellipse(myX+30, myY+30, 5, 5);//bottom right
    }
    if (myDots==3) {
      ellipse(myX+30, myY+10, 5, 5);//top right
      ellipse(myX+20, myY+20, 5, 5);//middle
      ellipse(myX+10, myY+30, 5, 5);//bottom left
    }
    if (myDots==4) {
      ellipse(myX+10, myY+10, 5, 5);//top left
      ellipse(myX+30, myY+10, 5, 5);//top right
      ellipse(myX+10, myY+30, 5, 5);//bottom left
      ellipse(myX+30, myY+30, 5, 5);//bottom right
    }
    if (myDots==5) {
      ellipse(myX+10, myY+10, 5, 5);//top left
      ellipse(myX+30, myY+10, 5, 5);//top right
      ellipse(myX+20, myY+20, 5, 5);//middle
      ellipse(myX+10, myY+30, 5, 5);//bottom left
      ellipse(myX+30, myY+30, 5, 5);//bottom right
    }
    if (myDots==6) {
      ellipse(myX+10, myY+10, 5, 5);//top left
      ellipse(myX+30, myY+10, 5, 5);//top right
      ellipse(myX+10, myY+20, 5, 5);//mid left
      ellipse(myX+30, myY+20, 5, 5);//mid right
      ellipse(myX+10, myY+30, 5, 5);//bottom left
      ellipse(myX+30, myY+30, 5, 5);//bottom right
    }
  }

  void show()
  {
    fill(255);
    stroke(0);
    rect(myX, myY, 40, 40,7);

    fill(0);

  }

}

  void scoreBoard(int total)
  {
    noStroke();
    fill(130, 29, 18);
    rect(100, 500, 300, 75);
    fill(0);
    textSize(22);
    text("Total:     "+ total, 165, 545);
  }
