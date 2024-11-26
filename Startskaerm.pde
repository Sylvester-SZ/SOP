//int middleoffset = height;
int missionnr = 0;
String mission = "";

String generatemission() {
  missionnr = int(random(1, 10));
  switch(missionnr) {
  case 1:
    return "Find telefonskibidi på firmaet. \n Nummeret findes på hjemmesiden";
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
  text(""+mission, width/2,(height/2)-height/8);
  textAlign(LEFT);
  popMatrix();
  
}

void accepter(){
   skaerm = 1;
   refresh();
}
