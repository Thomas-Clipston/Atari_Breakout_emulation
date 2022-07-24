Ball ball;
Board board;
Paddle paddle;
Bricks bricks;
Lives lives;

int score = 0;


void setup(){
  size(300,400);
  board = new Board();
}

void draw()
{
 background(0);
 textSize(20);
 text("Lives: "+lives.num,10,20);
 text("Score:", 200, 20);
 text(score,260,20);
 score = board.collision(ball,score);
 board.show();
 board.move();
}
