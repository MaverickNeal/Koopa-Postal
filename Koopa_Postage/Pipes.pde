class Pipes{
  
  int x;
  int y;
  int w;
  int h;
  
  int left;
  int right;
  int top;
  int bottom;
  
  int interval = 5;
  
  Pipes(int sX, int sY, int sW, int sH){
    x = sX;
    y = sY;
    w = sW;
    h = sH;
    
    left = x - w/2;
    right = x + w/2;
    top = y - h/2;
    bottom = y + h/2;
    
  }
  void topRow(){
    rectMode(CENTER);
    rect(x, 0, w, height*2 - h - 600);
    
    left = x - w/2;
    right = x + w/2;
    top = 0 + ((height*2 - h- 600)/2);
    bottom = 0 + ((height*2 - h- 600)/2);
  }
  void render(){
    rectMode(CENTER);
    fill(#05A20B);
    rect(x,y,w,h);
  }
  void move(){
    if(currentTime - startTime > interval){
      startTime = millis();
      if(state == 1){
        p1.x = p1.x - 5;
        p2.x = p2.x - 5;
        p3.x = p3.x - 5;
        p4.x = p4.x - 5;
        p5.x = p5.x - 5;
      }
      if(state == 2){
        p6.x = p6.x - 5;
        p7.x = p7.x - 5;
        p8.x = p8.x - 5;
        p9.x = p9.x - 5;
        p10.x = p10.x - 5;
        p11.x = p11.x - 5;
        p12.x = p12.x - 5;
        p13.x = p13.x - 5;
        p14.x = p14.x - 5;
        p15.x = p15.x - 5;
      }
      if(state == 3){
        p16.x = p16.x - 5;
        p17.x = p17.x - 5;
        p18.x = p18.x - 5;
        p19.x = p19.x - 5;
        p20.x = p20.x - 5;
        p21.x = p21.x - 5;
        p22.x = p22.x - 5;
        p23.x = p23.x - 5;
        p24.x = p24.x - 5;
        p25.x = p25.x - 5;
        p26.x = p26.x - 5;
        p27.x = p27.x - 5;
        p28.x = p28.x - 5;
        p29.x = p29.x - 5;
        p30.x = p30.x - 5;
      }
    }
  }
  void crash(Player P1){
    if(P1.right >= left && P1.bottom >= top && P1.left <= right){
      state = 5;
    }
  }
  
  
  
  
  
  
  
}
