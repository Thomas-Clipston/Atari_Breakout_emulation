class Ball{
  PVector pos;
  PVector vel;
  int size;
  color c;
  
  Ball(){
   pos = new PVector(random(width),200);
   vel = new PVector(2,3);
   size = 10;
   c = color(255);
  }
//graphic elements of the ball
  void show(){
   noStroke();
   color(c);
   ellipse(pos.x,pos.y,size,size);
  }
  //balls movement
  void move(){
    pos.x += ball.vel.x;
    pos.y += ball.vel.y;
  }
  
  // checking if the ball bounces of the walls of the screen
  int collision(int score){
    if(pos.x > width-size || pos.x < size){
      vel.x = -1*(vel.x+0.01);
    }
    if(pos.y < size){
      vel.y = -1*(vel.y+0.01);
    }
    //if the ball hits the button of the screen, the program writes to the screen instructions of how to restart the program with the space bar
    if(ball.pos.y > height-size && lives.num == 0){
      fill(0);
      rect(0,0,300,400);   
      fill(255);
      textSize(30);
      text("Game over", 80, 220);
      textSize(15);
      text("final Score: " + score, 100, 250);
      textSize(10);
      text("Press <Space> to try again.", 85, 280);
      
      if(keyPressed){
        if(key == ' '){
          ball.pos.y = height/2;
          bricks.restart();   
          score = 0;
          lives.num = 3;
          return score;
        }
      }
    }
    return score;
  }
  

}
