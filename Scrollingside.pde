int scrollPosition = 0; // Holder styr på scrollens position
int pageHeight = 1200;  // Højden af siden (indhold, der kan scrolles)




color bar = #7a7976;

void mouseWheel(MouseEvent event) {
  if (skaerm==2) {
    // Justér scrollPosition baseret på musens scrollhjul
    scrollPosition += event.getCount() * 20; // pixels pr. scrollklik
    // Begræns scrollPosition til sidens højde
    scrollPosition = constrain(scrollPosition, 0, pageHeight - height);
  }
  refresh();
}


void scrollSkaerm() {
  background(240);


  // Tegn indholdet baseret på scrollPosition
  pushMatrix();
  translate(0, -scrollPosition); // Flyt siden

  // Indhold på siden
  fill(0);
  textSize(22);
  text("Velkommen til EUC Nords Hjemmeside", 50, 100);
  textSize(15);
  text("Herunder ser du vores uddannelser:", 50, 120);

  // murer //
  fill(bar);
  rect(50, 140, width-100, 140, 10);
  image(murer, 60, 140+10, (140-20)*1.5, (140-20));
  textSize(25);
  fill(#ffffff);
  text("Murer", ((140-20)*1.5)+70, 140+30);
  textSize(17);
  text("Er du interesseret i at blive murer? \nKlik her for at lære mere", ((140-20)*1.5)+70, 140+65);

  // Tømrer //
  int offset1 = 2;
  int offset2 = 1;

  fill(bar);
  rect(50, 140*offset1+30*offset2, width-100, 140, 10);
  image(tomrer, 60, 140*offset1+10+30*offset2, (140-20)*1.5, (140-20));
  textSize(25);
  fill(#ffffff);
  text("Tømrer", ((140-20)*1.5)+70, 140*offset1+30+30*offset2);
  textSize(17);
  text("Er du interesseret i at blive tømrer? \nKlik her for at lære mere", ((140-20)*1.5)+70, 140*offset1+30*offset2+65);
  // Møbelsnedker //
  offset1 = 3;
  offset2 = 2;

  fill(bar);
  rect(50, 140*offset1+30*offset2, width-100, 140, 10);
  image(mobel, 60, 140*offset1+10+30*offset2, (140-20)*1.5, (140-20));
  textSize(25);
  fill(#ffffff);
  text("Møbelsnedker", ((140-20)*1.5)+70, 140*offset1+30+30*offset2);
  textSize(17);
  text("Er du interesseret i at blive møbelsnedker? \nKlik her for at lære mere", ((140-20)*1.5)+70, 140*offset1+30*offset2+65);

  // Personvognsmekaniker //
  offset1 = 4;
  offset2 = 3;
  fill(bar);
  rect(50, 140*offset1+30*offset2, width-100, 140, 10);
  image(mekaniker, 60, 140*offset1+10+30*offset2, (140-20)*1.5, (140-20));
  textSize(25);
  fill(#ffffff);
  text("Personvognsmekaniker", ((140-20)*1.5)+70, 140*offset1+30+30*offset2);
  textSize(17);
  text("Er du interesseret i at blive personvognsmekaniker? \nKlik her for at lære mere", ((140-20)*1.5)+70, 140*offset1+30*offset2+65);

  // Personvognsmekaniker //
  offset1 = 5;
  offset2 = 4;
  fill(bar);
  rect(50, 140*offset1+30*offset2, width-100, 140, 10);
  image(tekniker, 60, 140*offset1+10+30*offset2, (140-20)*1.5, (140-20));
  textSize(25);
  fill(#ffffff);
  text("Eventtekniker", ((140-20)*1.5)+70, 140*offset1+30+30*offset2);
  textSize(17);
  text("Er du interesseret i at blive Eventtekniker? \nKlik her for at lære mere", ((140-20)*1.5)+70, 140*offset1+30*offset2+65);


  //Bund
  fill(0);
  rect(0, 990, width, 210);
  fill(255);
  textSize(23);
  text("EUC Nord", 130, 1030);
  textSize(17);
  text("M. P. Koefoeds Vej 10\n9800 Hjørring", 130, 1060);
  text("Tlf. 7224 6000\ninfo@eucnord.dk", 130, 1110);
  //rect(130, 1097, 97, 17);
  text("EAN nr: 5798000554337\nCVR nr: 25009037", 130, 1165);
  textSize(23);
  text("Vores historie", 430, 1030);
  textSize(17);
  text("EUC Nord er grundlagt i 2000, \nmen har rødder helt tilbage \nfra teknisk skole i 1864. \n\nVi er siden da blevet en \nfremtræden og moderne \nerhvervsskole",430,1060);

  image(verdensmaal,750,1030,90,100);
  
  popMatrix(); // Gendanner koordinatsystemet til standard

  // Fast del i toppen
  fill(#ffbc04);
  //fill(#ada6a5);
  rect(0, 0, 1000, 75);
  image(logo, 25, 0, 150, 75);
}


void drawScrollBar() {
  float barHeight = height * (height / float(pageHeight));
  float barY = scrollPosition / float(pageHeight - height) * (height - barHeight);
  fill(150);
  rect(width - 20, barY, 10, barHeight);
}



void mission() {
  scrollPosition = 0;
  skaerm = 1;
  refresh();
}
