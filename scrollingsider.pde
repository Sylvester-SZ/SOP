String info1 = "Som murer bygger du fremtidens huse og skaber solide \nkonstruktioner med sten, fliser og beton. \nDu lærer at arbejde med alt fra facader til badeværelser \nog bliver en nøgleperson i byggeriet med sans \nfor kvalitet og æstetik.";
String info2 = "En uddannelse som tømrer giver dig evnerne til at \narbejde med træ og andre materialer. Du opbygger alt \nfra tage og vægge til specialdesignede møbler, \nhvor kreativitet og præcision er i fokus.";
String info3 = "Som møbelsnedker arbejder du med at skabe unikke \nmøbler og interiør. \nUddannelsen lærer dig at kombinere \ntraditionelt håndværk med moderne teknikker, \nså du kan skabe smukke og funktionelle designs.";
String info4 = "Drømmer du om at arbejde med biler? \nSom personvognsmekaniker lærer du at \nreparere, vedligeholde og optimere moderne køretøjer. \nDu bliver ekspert i motorteknologi og \ndigitale styringssystemer.";
String info5 = "Som eventtekniker står du bag kulisserne \ntil koncerter, shows og events. \nDu lærer at arbejde med lyd, lys og sceneteknik, \nså du kan skabe magiske øjeblikke for publikum.";
String[] infoer = {info1, info2, info3, info4, info5};

void tegnskaerme(int udd) {
  background(240);

  // Fast del i toppen
  fill(#ffbc04);
  //fill(#ada6a5);
  rect(0, 0, 1000, 75);
  image(logo, 25, 0, 150, 75);

  //Baggrund til billede
  fill(bar);
  rect(20, 100, width-40, height-140, 10);

  switch(udd) {
  case 1:
    image(murer, 30, 110+10, (250-20)*1.5, (250-20));
    fill(255);
    textSize(35);
    text("Murer", 375+10, 110+10+30);
    textSize(25);
    text(info1, 375+10, 120+80);
    textSize(35);
    text("Studiestart d. 15. januar", 60, 110+10+(250-20)+70);
    break;
  case 2:
    image(tomrer, 30, 110+10, (250-20)*1.5, (250-20));
    fill(255);
    textSize(35);
    text("Tømrer", 375+10, 110+10+30);
    textSize(25);
    text(info2, 375+10, 120+80);
    textSize(35);
    text("Studiestart d. 1. marts", 60, 110+10+(250-20)+70);
    break;
  case 3:
    image(mobel, 30, 110+10, (250-20)*1.5, (250-20));
    fill(255);
    textSize(35);
    text("Møbelsnedker", 375+10, 110+10+30);
    textSize(25);
    text(info3, 375+10, 120+80);
    textSize(35);
    text("Studiestart d. 10. august", 60, 110+10+(250-20)+70);
    break;
  case 4:
    image(mekaniker, 30, 110+10, (250-20)*1.5, (250-20));
    fill(255);
    textSize(35);
    text("Personvognsmekaniker", 375+10, 110+10+30);
    textSize(25);
    text(info4, 375+10, 120+80);
    textSize(35);
    text("Studiestart d. 5. september", 60, 110+10+(250-20)+70);
    break;
  case 5:
    image(tekniker, 30, 110+10, (250-20)*1.5, (250-20));
    fill(255);
    textSize(35);
    text("Eventtekniker", 375+10, 110+10+30);
    textSize(25);
    text(info5, 375+10, 120+80);
    textSize(35);
    text("Studiestart d. 20. november", 60, 110+10+(250-20)+70);
    break;
  default:
  }
}


void tilbage() {
  switch(missionskaerm) {
  case 1:
    skaerm = 2;
    refresh();
    break;
  case 2:
    skaerm = 3;
    refresh();
    break;
  }
}
