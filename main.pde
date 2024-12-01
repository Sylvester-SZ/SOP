import controlP5.*;

int skaerm = 0;
PImage logo, murer, tomrer, mobel, mekaniker, tekniker;
color scroll = color(#ffbc04);

color backgroundcolor = color(#bab5b5);

RadioButton kon;


ControlP5 cp5start, cp5scroll, cp5intro  ;


void setup() {
  println(140*5+30*4+140);
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
  cp5intro = new ControlP5(this);
  PFont pfont = createFont("Arial", 5, true);
  ControlFont font = new ControlFont(pfont, 20);



  //knapper
  //startside
  cp5start.addButton("accepter").setSize(300, 75)
    .setPosition(width/2.80, (height)-height/2)
    .setFont(font)
    .updateSize();
  cp5start.addButton("end").setSize(300, 75)
    .setPosition(0, height-75).setFont(font)
    .updateSize();
  //scrollingside
  cp5scroll.addButton("mission")
    .setSize(width/8, 73).setPosition(width-width/8, 1)
    .setFont(font)
    .setColorBackground(color(255, 188, 4));

  //introskaerm
  int qoffset = 20;
  cp5intro.addTextfield("alder")
    .setSize(230, 40)
    .setPosition(width/2.65, 350+qoffset*0)
    .setFont(font)
    .updateSize();
  cp5intro.getController("alder")
    .getCaptionLabel()
    .setVisible(false);
  kon = cp5intro.addRadioButton("kon")
    .setSize(40, 20)
    .setPosition(width/2.80+30, 320+qoffset*5)
    .setFont(font)
    .setColorForeground(color(120))
    .setColorActive(color(255))
    .setColorLabel(color(255))
    .setItemsPerRow(5)
    .setSpacingColumn(50)
    .addItem("Mand", 1).addItem("Kvinde", 2).addItem("Andet", 3);
  cp5intro.addButton("klar")
    .setSize(270, 75)
    .setPosition(width/2.80, 320+qoffset*7)
    .setFont(font)
    .updateSize();



  //Startfunktioner
  refresh();
}

void draw() {
  realmouseY = mouseY+scrollPosition;
  //drawScrollBar();
}

void refresh() {
  switch(skaerm) {
  case 0: //Introskærm
    introskaerm();
    cp5start.setVisible(false);
    cp5scroll.setVisible(false);
    break;
  case 1: // Mission/startskærm
    startskaerm();
    cp5start.setVisible(true);
    cp5intro.setVisible(false);
    cp5scroll.setVisible(false);
    break;
  case 2: //scrollskærm
    scrollSkaerm();
    drawScrollBar();
    cp5start.setVisible(false);
    cp5intro.setVisible(false);
    cp5scroll.setVisible(true);
    break;
    //case 3: //
    //  tegnskaerme(0);
    //  cp5start.setVisible(false);
    //  cp5intro.setVisible(false);
    //  cp5scroll.setVisible(false);
    //  break;
  case 4: // Murer
    tegnskaerme(1);
    cp5start.setVisible(false);
    cp5intro.setVisible(false);
    cp5scroll.setVisible(false);
    break;
  case 5: // Tømrer
    tegnskaerme(2);
    cp5start.setVisible(false);
    cp5intro.setVisible(false);
    cp5scroll.setVisible(false);
    break;
  case 6: // Møbelsnedker
    tegnskaerme(3);
    cp5start.setVisible(false);
    cp5intro.setVisible(false);
    cp5scroll.setVisible(false);
    break;
  case 7: // Personvognsmekaniker
    tegnskaerme(4);
    cp5start.setVisible(false);
    cp5intro.setVisible(false);
    cp5scroll.setVisible(false);
    break;
  case 8: // Eventtekniker
    tegnskaerme(5);
    cp5start.setVisible(false);
    cp5intro.setVisible(false);
    cp5scroll.setVisible(false);
    break;
  default: //missionskærm
    startskaerm();
    cp5start.setVisible(true);
    cp5intro.setVisible(false);
    cp5scroll.setVisible(false);
    break;
  }
}
