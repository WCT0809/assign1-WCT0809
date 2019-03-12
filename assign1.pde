PImage bg; 
PImage groundhog;
PImage life;
PImage robot;
PImage soil;
PImage soldier;

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
int rayY;

int raySpeedX;
int soldierSpeedX;

int rayOverX;

int robotLocationX = floor(random(6)+2);
int robotLocationY = floor(random(4)+1);

int soldierLocationX = floor(random(8)+1);
int soldierLocationY = floor(random(4)+1);

void setup() {
  size(640, 480);
  bg = loadImage("img/bg.jpg");
  groundhog = loadImage("img/groundhog.png");
  life = loadImage("img/life.png");
  robot = loadImage("img/robot.png");
  soil = loadImage("img/soil.png");
  soldier = loadImage("img/soldier.png");
  
  groundhogX = 280;
  groundhogY = 80;
  bgW = 640;
  bgH = 480;
  sunX = 590;
  sunY= 50;
  robotX = robotLocationX * 80;
  robotY= 80 + robotLocationY * 80;
   
  soldierX = soldierLocationX * 80;
  soldierY= 80 + soldierLocationY * 80;

  rayX =robotX+25;
  rayY =robotY+37;
  
  rayOverX = rayX-160;
  
  raySpeedX = 2;
  soldierSpeedX = 2;
}

void draw() {
    image(bg,0,0,640,480);
    image(soil,0,160,640,320);
    image(life,10,10,50,51);
    image(life,80,10,50,51);
    image(life,150,10,50,51);
    image(soldier,soldierX,soldierY);
    
    colorMode(RGB);
    stroke(255,0,0);
    strokeWeight(10);
    line(rayX,rayY,rayX+45,rayY);
    rayX -= raySpeedX; //
    rayX %= (rayOverX); //
  
    soldierX +=soldierSpeedX;
    soldierX %= 640;
    
    image(robot,robotX,robotY);
    
    colorMode(RGB);
    fill(124,204,25);
    noStroke();
    rect(0,145,640,15);
    colorMode(RGB);
    fill(253,184,19);
    stroke(255,255,0);
    strokeWeight(5);
    ellipse(sunX,sunY,120,120);

    
    image(groundhog,groundhogX,groundhogY);
    
}
