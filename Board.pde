class Board{
  Board(){
    ball = new Ball();
    paddle = new Paddle();
    bricks = new Bricks();
    lives = new Lives();
  }
  //movement of objects
  void move(){
    ball.move();
    paddle.move();
  }
  //collision events
  int collision(Ball ball,int score){
    paddle.collision(ball);
    score = ball.collision(score);
    score = bricks.collision(ball, score);
    lives.lose_life();
    return score;
  }
  
  //drawing to the screen
  void show(){
    paddle.show();
    ball.show();
    bricks.show();
  }
}
