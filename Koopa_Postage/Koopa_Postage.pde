import processing.sound.*;
SoundFile flap;
SoundFile level1;
PImage envelopeImg;
PImage level1Img;
PImage level2Img;
PImage level3Img;
PImage PlayerImg;
Player P1;
//Level 1
Pipes p1;Pipes p2;Pipes p3;Pipes p4;Pipes p5;
//Level 2
Pipes p6;Pipes p7;Pipes p8;Pipes p9;Pipes p10;
Pipes p11;Pipes p12;Pipes p13;Pipes p14;Pipes p15;
//Level 3
Pipes p16;Pipes p17;Pipes p18;Pipes p19;Pipes p20;
Pipes p21;Pipes p22;Pipes p23;Pipes p24;Pipes p25;
Pipes p26;Pipes p27;Pipes p28;Pipes p29;Pipes p30;
int state = 0;
int startTime;
int currentTime;
int interval = 5;

void setup(){
  size(1600,1100);
  rectMode(CENTER);
  flap = new SoundFile(this, "flap.wav");
  envelopeImg = loadImage("envelope.jpg");
  envelopeImg.resize(1600,1100);
  PlayerImg = loadImage("Koopa.png");
  PlayerImg.resize(50,50);
  imageMode(CENTER);
  
  P1 = new Player(200, height/2, 50, 50);
  //Level 1
  level1 = new SoundFile(this, "level1.mid");
  level1Img = loadImage("Level 1.png");
  level1Img.resize(1600,1100);
  p1= new Pipes(2000, height, 74, int(random(150,1000)));
  p2= new Pipes(2400, height, 74, int(random(150,1000)));
  p3= new Pipes(2800, height, 74, int(random(150,1000)));
  p4= new Pipes(3200, height, 74, int(random(150,1000)));
  p5= new Pipes(3600, height, 74, int(random(150,1000)));
  //Level 2
  level2Img = loadImage("Level 2.jpg");
  level2Img.resize(1600,1100);
  p6= new Pipes(2000, height, 74, int(random(150,1000)));
  p7= new Pipes(2400, height, 74, int(random(150,1000)));
  p8= new Pipes(2800, height, 74, int(random(150,1000)));
  p9= new Pipes(3200, height, 74, int(random(150,1000)));
  p10= new Pipes(3600, height, 74, int(random(150,1000)));
  p11= new Pipes(4000, height, 74, int(random(150,1000)));
  p12= new Pipes(4400, height, 74, int(random(150,1000)));
  p13= new Pipes(4800, height, 74, int(random(150,1000)));
  p14= new Pipes(5200, height, 74, int(random(150,1000)));
  p15= new Pipes(5600, height, 74, int(random(150,1000)));
  //Level 3
  level3Img = loadImage("Level 3.jpg");
  level3Img.resize(1600,1100);
  p16= new Pipes(2000, height, 74, int(random(150,1000)));
  p17= new Pipes(2400, height, 74, int(random(150,1000)));
  p18= new Pipes(2800, height, 74, int(random(150,1000)));
  p19= new Pipes(3200, height, 74, int(random(150,1000)));
  p20= new Pipes(3600, height, 74, int(random(150,1000)));
  p21= new Pipes(4000, height, 74, int(random(150,1000)));
  p22= new Pipes(4400, height, 74, int(random(150,1000)));
  p23= new Pipes(4800, height, 74, int(random(150,1000)));
  p24= new Pipes(5200, height, 74, int(random(150,1000)));
  p25= new Pipes(5600, height, 74, int(random(150,1000)));
  p26= new Pipes(6000, height, 74, int(random(150,1000)));
  p27= new Pipes(6400, height, 74, int(random(150,1000)));
  p28= new Pipes(6800, height, 74, int(random(150,1000)));
  p29= new Pipes(7200, height, 74, int(random(150,1000)));
  p30= new Pipes(7600, height, 74, int(random(150,1000)));
  
  startTime = millis();
  
}
void draw(){
  background(#A5710F);
  if(level1 .isPlaying() == false){
    level1.play();
    }
  switch(state){
    case 0:
    image(envelopeImg, width/2, height/2);
    startscreen();
    break;
    case 1:
    image(level1Img, width/2, height/2);
    P1.render();P1.fly();P1.fall();P1.maxFlapLift();
  
    p1.render();p1.move();p1.topRow();p1.crash(P1);
    p2.render();p2.move();p2.topRow();p2.crash(P1);
    p3.render();p3.move();p3.topRow();
    p4.render();p4.move();p4.topRow();
    p5.render();p5.move();p5.topRow();
    change();
    break;
    case 2:
    image(level2Img, width/2, height/2);
    P1.render();P1.fly();P1.fall();P1.maxFlapLift();
    
    p6.render();p6.move();p6.topRow();p6.crash(P1);
    p7.render();p7.move();p7.topRow();p7.crash(P1);
    p8.render();p8.move();p8.topRow();p8.crash(P1);
    p9.render();p9.move();p9.topRow();p9.crash(P1);
    p10.render();p10.move();p10.topRow();p10.crash(P1);
    p11.render();p11.move();p11.topRow();p11.crash(P1);
    p12.render();p12.move();p12.topRow();p12.crash(P1);
    p13.render();p13.move();p13.topRow();p13.crash(P1);
    p14.render();p14.move();p14.topRow();p14.crash(P1);
    p15.render();p15.move();p15.topRow();p15.crash(P1);
    change();
    break;
    case 3:
    image(level3Img, width/2, height/2);
    P1.render();P1.fly();P1.fall();P1.maxFlapLift();
    
    p16.render();p16.move();p16.topRow();p16.crash(P1);
    p17.render();p17.move();p17.topRow();p17.crash(P1);
    p18.render();p18.move();p18.topRow();p18.crash(P1);
    p19.render();p19.move();p19.topRow();p19.crash(P1);
    p20.render();p20.move();p20.topRow();p20.crash(P1);
    p21.render();p21.move();p21.topRow();p21.crash(P1);
    p22.render();p22.move();p22.topRow();p22.crash(P1);
    p23.render();p23.move();p23.topRow();p23.crash(P1);
    p24.render();p24.move();p24.topRow();p24.crash(P1);
    p25.render();p25.move();p25.topRow();p25.crash(P1);
    p26.render();p26.move();p26.topRow();p26.crash(P1);
    p27.render();p27.move();p27.topRow();p27.crash(P1);
    p28.render();p28.move();p28.topRow();p28.crash(P1);
    p29.render();p29.move();p29.topRow();p29.crash(P1);
    p30.render();p30.move();p30.topRow();p30.crash(P1);
    change();
    break;
    case 4:
    background(#E8F71E);
    winscreen();
    break;
    case 5:
    background(0);
    crashscreen();
    break;
  }
  
  currentTime = millis();
}
void startscreen(){
  textSize(100);
  fill(0);
  text("Koopa Postage", 500, height/2);
  textSize(50);
  fill(0);
  text("Press Space To Start", 500, height/2 + 200);
}
void crashscreen(){
  textSize(100);
  fill(255);
  text("OUCH!", 600, height/2);
}
void winscreen(){
  textSize(200);
  fill(0);
  text("YOU WIN!", 400, height/2);
}
void keyPressed(){
  if(key == ' ' && P1.isFlying == false && P1.isFalling == false){
    P1.isFlying = true;
    P1.maxFlapLift = P1.y - P1.flapHeight;
    if(state == 0){
      state = 1;
    }
  }
  else if(key == ' ' && P1.isFlying == false && P1.isFalling == true){
    P1.isFlying = true;
    flap.play();
    P1.maxFlapLift = P1.y - P1.flapHeight;
    P1.isFalling = false;
  }
  if(key == 'r'){
    state = 1;
    startTime = 0;
    currentTime = 0;
    P1.y = height/2;
  }
}
void keyReleased(){
  if(key == ' '){
    P1.isFlying = false;
    P1.isFalling = true;
  }
}
void change(){
  if(p5.x <= -37){
    state = 2;
  }
  if(p15.x <= -37){
    state = 3;
  }
  if(p30.x <= -37){
    state = 4;
  }
  if(state == 1 || state == 2 || state == 3){
    if(P1.y + 25 == height || P1.y - 25 == 0){
    state = 5;
    }
  }
}
