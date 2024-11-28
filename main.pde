import controlP5.*;

int skaerm = 0;
PImage logo, murer,tomrer, mobel, mekaniker, tekniker;
color scroll = color(#ffbc04);

ControlP5 cp5start,cp5scroll;




void setup() {
  //fullScreen();
  size(1000, 562);
  
  //Images
  logo = loadImage("logotransparent.png");
  murer =loadImage ("murer.png");
  tomrer = loadImage("tomrer.png");
  mobel = loadImage("mobelsnedker.png");
  mekaniker = loadImage("mekaniker.png");
  tekniker = loadImage("tekniker.png");
  // cp5
  cp5start = new ControlP5(this);
  cp5scroll = new ControlP5(this);
  PFont pfont = createFont("Arial",5,true);
  ControlFont font = new ControlFont(pfont,20);
  

  
  //knapper
    //startside
  cp5start.addButton("accepter").setSize(300,75).setPosition(width/2.80, (height)-height/2).setFont(font).updateSize();
  cp5start.addButton("end").setSize(300,75).setPosition(0, height-75).setFont(font).updateSize();
    //scrollingside
  cp5scroll.addButton("mission").setSize(width/8,73).setPosition(width-width/8, 1).setFont(font).setColorBackground(color(255, 188, 4)).updateSize();
  
  //Startfunktioner
  mission = generatemission();
  refresh();
}

void draw() {
    drawScrollBar();
}

void refresh() {
  switch(skaerm) {
  case 1:
    scrollSkaerm();
    drawScrollBar();
    cp5start.setVisible(false);
    cp5scroll.setVisible(true);
    break;
  default:
    startskaerm();
    drawScrollBar();
    cp5start.setVisible(true);
    cp5scroll.setVisible(false);
    break;
  }
}
