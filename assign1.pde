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
  robotX = 400;
  robotY= 160;
  soldierX = 240;
  soldierY= 400;
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
    line(robotX+25,robotY+37,robotX+65,robotY+37);
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
