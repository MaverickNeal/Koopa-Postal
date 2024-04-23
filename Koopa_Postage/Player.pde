class Player{
  int x;
  int y;
  int w;
  int h;
  
  int left;
  int right;
  int top;
  int bottom;
  
  boolean isFlying;
  boolean isFalling;
  
  int speed;
  int flapHeight;
  int maxFlapLift;
  int gliding;
  
  Player(int startX, int startY, int startW, int startH){
    x = startX;
    y = startY;
    w = startW;
    h = startH;
    
    left = x - w/2;
    right = x + w/2;
    top = y - h/2;
    bottom = y + h/2;
    
    isFlying = false;
    isFalling = false;
    
    speed = 10;
    flapHeight = 100;
    maxFlapLift = y - flapHeight;
    gliding = y - flapHeight/2;
  }
  void render(){
   rectMode(CENTER);
   rect(x,y,w,h);
   image(PlayerImg, P1.x, P1.y);
  }
  void fly(){
    if(isFlying == true){
      y -= speed*2;
    }
  }
  void fall(){
    if(isFalling == true){
      y += speed/2;
    }
  }
  void maxFlapLift(){
    if(y <= maxFlapLift){
      isFlying = false;
      isFalling = true;
    }
  }
}
