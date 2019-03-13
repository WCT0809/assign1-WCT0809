PImage bg; 
PImage groundhog;
PImage life1;
PImage life2;
PImage life3;
PImage robot;
PImage soil;
PImage soldier; //img all

int groundhogX;
int groundhogY;

int bgW;
int bgH;

int sunX;
int sunY;
int robotX;
int robotY;
int soldierX;
int soldierY;
int rayX;
int rayY;        //about item X,y

int raySpeedX;
int soldierSpeedX;        //about speed
   
int robotLocationX = floor(random(6)+2);
int robotLocationY = floor(random(4)+1);      //about location x,y by 4x8

int soldierLocationX = floor(random(8)+1);
int soldierLocationY = floor(random(4)+1);     //about location x,y by 4x8

void setup() {
  size(640, 480);
  bg = loadImage("img/bg.jpg");
  groundhog = loadImage("img/groundhog.png");
  life1 = loadImage("img/life.png");
  life2 = loadImage("img/life.png");
  life3 = loadImage("img/life.png");
  robot = loadImage("img/robot.png");
  soil = loadImage("img/soil.png");
  soldier = loadImage("img/soldier.png");           //load all img
  
  groundhogX = 280;
  groundhogY = 80;    //about x,y  for gh
  bgW = 640;
  bgH = 480;          //about size for bg
  sunX = 590;
  sunY= 50;           //about x,y for sun
  
  robotX = robotLocationX * 80;
  robotY= 80 + robotLocationY * 80;  //about real robot x,y   4x8 1,2 can't
  
  soldierX = soldierLocationX * 80;
  soldierY= 80 + soldierLocationY * 80; //about real soldier x,y   4x8 to real loction
  
  rayX =robotX+25;
  rayY =robotY+37;       //robot hand x,y
  
  raySpeedX = 2;
  soldierSpeedX = 2;     //about speed
}

void draw() {
    image(bg,0,0,640,480);
    image(soil,0,160,640,320);
    image(life1,10,10,50,51);
    image(life2,80,10,50,51);
    image(life3,150,10,50,51);
    image(soldier,soldierX,soldierY);      //img all x,y
    
    colorMode(RGB);
    stroke(255,0,0);
    strokeWeight(10);
    line(rayX,rayY,rayX+40,rayY);           //draw ray
    rayX -= raySpeedX; //
    if (rayX < robotX-160)                  //ray move loction(if rayX < robotX-160 Run rayX = robotX)
      rayX = robotX;

    soldierX +=soldierSpeedX;               //soldier move loction
    soldierX %= 640;
    
    image(robot,robotX,robotY);             //robot cover ray
    
    colorMode(RGB);
    fill(124,204,25);
    noStroke();
    rect(0,145,640,15);
    colorMode(RGB);
    fill(253,184,19);
    stroke(255,255,0);
    strokeWeight(5);
    ellipse(sunX,sunY,120,120);             //draw sun x,y size

    
    image(groundhog,groundhogX,groundhogY); //draw gh
    
}
