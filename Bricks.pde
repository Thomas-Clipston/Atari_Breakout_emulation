class Bricks{
  PVector[] pos;
  PVector size;
  
  Bricks(){
    size = new PVector(43,10);
    pos = new PVector[40];
    int temp = 0;
    for(int m = 0; m < 6; m++){
      for(int i = 0; i < 6; i++){
        pos[temp] = new PVector(10+(47*i),50+(m*13));
        temp++;
      }
      
    }
  }

  void show(){
    for(int i = 0; i < 36; i++){
      color(random(255),random(255),random(255));
      rect(pos[i].x,pos[i].y,size.x,size.y);
    }
   
  }
  void restart(){
    int temp = 0;
  for(int m = 0; m < 6; m++){
      for(int i = 0; i < 6; i++){
        pos[temp] = new PVector(10+(47*i),50+(m*13));
        temp++;
      }
  
  }
  }
  //this just uses the same logic as the paddle except we check for each brick
  int collision(Ball ball,int score){
    for(int i = 0; i < 36; i++){
        if(ball.pos.x < bricks.pos[i].x + bricks.size.x && ball.pos.x + ball.size > bricks.pos[i].x && ball.pos.y > bricks.pos[i].y && ball.pos.y < bricks.pos[i].y+bricks.size.y )
        {
          //when a brick is hit we just send it off screen 
          ball.vel.y = -1*ball.vel.y+0.2;
          bricks.pos[i].y = 500;
          bricks.pos[i].x = 500;
          score = score+10;
        }  
    }
    if(score%360 == 0){
      bricks.restart();
      score += 10;
      ball.pos.y = height/2;
    }
    
    
    return score;
  }
  

}
