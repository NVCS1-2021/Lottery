public class Ball {
  private PVector pos;
  private final int SIZE = 150;
  private color COLOR;
  public int value;
  public String colorName;
  
  public Ball(PVector p) {
    pos = p;
    value = (int)(Math.random()*3); //0-19
    int colorChoice = (int)(Math.random()*6+1); //1-6
    if (colorChoice == 1) {
      COLOR = color(255,0,0);
      colorName = "red";
    }
    else if (colorChoice == 2) {
      COLOR = color(0,0,255);
      colorName = "blue";
    }
    else if (colorChoice == 3) {
      COLOR = color(0,255,0);
      colorName = "green";
    }
    else if (colorChoice == 4) {
      COLOR = color(255,255,0);
      colorName = "yellow";
    }
    else if (colorChoice == 5) {
      COLOR = color(255,0,255);
      colorName = "purple";
    }
    else {
      COLOR = color(0,0,0);
      colorName = "black";
    }
  }
  
  public void show() {
    fill(COLOR);
    circle(pos.x,pos.y,SIZE); //<>// //<>//
    fill(255);
    circle(pos.x,pos.y,SIZE*0.60);
    fill(0);
    textSize(48);
    textAlign(CENTER,CENTER);
    text(value,pos.x,pos.y);
  }
}
