class Paddle{

   PVector pos;
   PVector size;
   
   Paddle(){
     pos = new PVector(width/2,height-40);
     size = new PVector(50,10);
   }
   //moves the paddle based on locaton of the mouse
  void move(){
    if(mouseX>0 && mouseX<width-size.x)
    paddle.pos.x = mouseX;
  }
  //hits ball back when it hits the paddle
  void collision(Ball ball){
    if(ball.pos.x < paddle.pos.x+paddle.size.x && ball.pos.x + ball.size > paddle.pos.x && ball.pos.y > paddle.pos.y && ball.pos.y < paddle.pos.y+paddle.size.y )
    {
      ball.vel.y *= -1;
    }
  
  }
  //graphical elements of the paddle
  void show(){
    noStroke();
    color(255);
    rect(pos.x,pos.y,size.x,size.y);
  }

}
