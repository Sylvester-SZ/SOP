void omOsSkaerm(){
  background(255);
    // Fast del i toppen
  fill(#ffbc04);
  //fill(#ada6a5);
  rect(0, 0, 1000, 75);
  image(logo, 25, 0, 150, 75);
  
  
  textSize(45);
  fill(0);
  text("Om os:",20,125);
  textSize(20);
  text("M. P. Koefoeds Vej 10\n9800 Hjørring", 20, 160);
  text("Tlf. 7224 6000\ninfo@eucnord.dk", 20, 220);
  //rect(130, 1097, 97, 17);
  text("EAN nr: 5798000554337\nCVR nr: 25009037", 20, 280);
  textSize(26);
  text("Vores historie:", 20, 340);
  textSize(20);
  text("EUC Nord er grundlagt i 2000, men har rødder helt tilbage fra teknisk skole i 1864. \nVi er siden da blevet en fremtræden og moderne erhvervsskole",20,370);

}


void tiltagSkaerm(){
  if(inverted==false){
    verdensmaal.filter(INVERT);
    inverted = true;
  }
  background(255);
    // Fast del i toppen
  fill(#ffbc04);
  //fill(#ada6a5);
  rect(0, 0, 1000, 75);
  image(logo, 25, 0, 150, 75);
  
  textSize(45);
  fill(0);
  text("Tiltag:",20,125);
  textSize(25);
  text("EUC Nord er en FN-verdensmålsskole. \nDet betyder at vi aktivt arbejder som institution på verdensmålene, \nmen også bruger dem som problemstillinger i undervisningen.", 20, 170);
  image(verdensmaal, 175, 275, 300,280);
}
