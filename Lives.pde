class Lives{
  int num;
 
  Lives(){
    num = 3;  
  }
  
  void lose_life(){
       if(ball.pos.y > height-ball.size && num > 0){
         ball.pos.y = height/2;
         num -= 1;
         ball.vel.y = 3;
         
      }
  }


}
