//int middleoffset = height;
int missionnr = 0;
String mission = "";

int missionskaerm = 0;

int missionstart = 0;
int missiontime = 0;

String generatemission() {
  missionnr = int(random(1, 3));
  switch(missionnr) {
  case 1:
    return "Find telefonnummeret for EUC Nords reception. \n Klik på nummeret som findes på hjemmesiden";
  case 2:
    return "Find studiestart for eventteknikerne. \n Klik på datoen som findes på hjemmesiden";
  default:
    return "Find telefonnummeret på firmaet. \n - Nummeret findes på hjemmesiden";
  }
}


void startskaerm() {
  background(#bab5b5);
  pushMatrix();
  textAlign(CENTER);
  textSize(35);
  fill(#8f372b);
  text("Din mission er som følgende:", width/2, (height/2)-height/4);
  textSize(20);
  textLeading(30);
  fill(#0f0f0f);
  text(""+mission, width/2, (height/2)-height/8);
  textAlign(LEFT);
  popMatrix();
}

void completemission() {
  missiontime = millis() - missionstart;
  scrollPosition = 0;
  skaerm = 1;
  mission = generatemission();
  missionskaerm = int(random(1, 3));
  println("quest completed");
  sendCollectedData();
  refresh();
}



void accepter() {
  missionstart = millis();
  skaerm = 2;
  refresh();
}


void end() {
  sendCollectedData();
}
