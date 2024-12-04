int selected = 0;


void subSkaerm() {
  background(240);

  // Indhold på siden
  fill(0);
  textSize(45);
  text("Velkommen til EUC Nord", 50, 125);
  textSize(20);
  text("Udforsk vores hjemmeside i menuerne ovenfor", 50, 160);

 

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
  
  
  switch(selected){
  case 1: // Uddannelser
  break;
  case 2:
  break;
  case 3:
  break;
  default:
  println("selected = default state");
  break;
  
  }
}
