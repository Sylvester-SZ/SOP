int selected = 0;


void subSkaerm() {
  background(240);



  // Indhold på siden
  fill(0);
  textSize(45);
  text("Velkommen til EUC Nord", 50, 125);
  textSize(20);
  text("Udforsk vores hjemmeside i menuerne ovenfor", 50, 160);

  //image(forside,0,175, (564-175)*2.63,(564-175));
  //Variabel top

  switch(selected) {
  case 1: // Uddannelser
    //noStroke();
    fill(#ffbc04);
    rect(200, 75, 1000, 110);
    textSize(30);
    fill(255);
    text("Murer                        Tømrer                  Møbelsnedker\nAutomekaniker    Eventtekniker", 210, 120);


    break;
  case 2:
    break;
  case 3:
    fill(#ffbc04);
    rect(200, 75, 1000, 110);
    textSize(30);
    fill(255);
    text("Om Os                        Vores tiltag                  Nyheder", 210, 120);
    break;
  default:
    println("selected = default state");
    break;
  }


  //Bund
  fill(0);
  rect(0, 500, width, 210);
  //fill(255);
  //textSize(23);
  //text("EUC Nord", 130, 1030);
  //textSize(17);
  //text("M. P. Koefoeds Vej 10\n9800 Hjørring", 130, 1060);
  //text("Tlf. 7224 6000\ninfo@eucnord.dk", 130, 1110);
  ////rect(130, 1097, 97, 17);
  //text("EAN nr: 5798000554337\nCVR nr: 25009037", 130, 1165);
  //image(verdensmaal, 750, 1030, 90, 100);

  // Fast del i toppen
  fill(#ffbc04);
  //fill(#ada6a5);
  rect(0, 0, 1000, 75);
  image(logo, 25, 0, 150, 75);

  textSize(25);
  fill(255);

  int offset=0;
  text("Uddannelser", 225, 50);
  image(arrow, 365, 25, 40, 40);
  offset=1;
  text("Skolelivet", 255+200*offset, 50);
  image(arrow, 365+200*offset, 25, 40, 40);
  offset=2;
  text("EUC Nord", 255+200*offset, 50);
  image(arrow, 365+200*offset, 25, 40, 40);
}
