PImage soil;
PImage soldier;
int groundhogX;
int groundhogY;
int bgW;
int bgH;
int SunX;
int SunY;
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
  SunX = 590;
  SunY= 50;
}

void draw() {
    image(bg,0,0,640,480);
    image(soil,0,160,640,320);
    image(life,10,10,50,51);
    image(life,80,10,50,51);
    image(life,150,10,50,51);
    colorMode(RGB);
    fill(124,204,25);
    noStroke();
    rect(0,145,640,15);
    colorMode(RGB);
    fill(253,184,19);
    stroke(255,255,0);
    strokeWeight(5);
    ellipse(SunX,SunY,120,120);
    image(groundhog,groundhogX,groundhogY);
    
}
