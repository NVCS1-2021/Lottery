Ball player1Ball;
Ball player2Ball;

public void setup() {
  size(800,600);
  PVector pos1 = new PVector(50,height/2);
  PVector pos2 = new PVector(width-50,height/2);
  player1Ball = new Ball(pos1);
  player2Ball = new Ball(pos2);
  textSize(48);
  textAlign(CENTER,CENTER);
}

public void draw() {
  background(220);
  player1Ball.show();
  player2Ball.show();
  calcWinner();
}

private void calcWinner() {
  if (player1Ball.colorName == "red") {
    text("Player 1 Wins",width/2,height/2);
  }
  else if (player2Ball.colorName == "red") {
    text("Player 2 Wins",width/2,height/2);
  }
  else if (player1Ball.value > player2Ball.value) {
    text("Player 1 Wins",width/2,height/2);
  }
  else if (player2Ball.value > player1Ball.value) {
    text("Player 2 Wins",width/2,height/2);
  }
  else {
    text("TIE!",width/2,height/2);
  }
}
