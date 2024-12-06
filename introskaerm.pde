int kontal;

void introskaerm() {
  background(#bab5b5);
  fill(0);
  textSize(40);
  textAlign(CENTER);
  text("VELKOMMEN", width/2, 75);
  textSize(18);
  text("Dette program er lavet til at indsamle data til mit SOP Projekt (Matematik A - Digital, Design & Udvikling A)\n\nMan får en mission på missionsskærmen, hvorefter man skal navigere rundt på en hjemmeside for at finde 'målet'\nFor at klare missionen skal man blot klikke på den information man søger efter, herefter vil man få en ny mission\nDer er 2 forskellige sider; én hvor man scroller, én hvor man klikker igennem menu'er. \n\nEr man nysgerrig på projektet eller har spørgsmål til programmet så kan man fange mig på email:\nsylvester@outlook.dk, eller skrive til mig på Lectio\n\nFør du begynder skal du lige svare på 2 spørgsmål", width/2, 125);
  textSize(20);
  textAlign(LEFT);
  fill(0);
  text("ALDER:", width/2.65, 350-10);
  text("KØN:", width/2.65, 350+60);
  fill(255);
}


void klar() {
  if ((kon.getState(0) | kon.getState(1) | kon.getState(2)) && (cp5intro.get(Textfield.class, "alder").getText()!="0")) {
    skaerm = 1;
    mission = generatemission();
    //missionskaerm = int(random(1,2));
    missionskaerm = int(random(1,3));
    if (kon.getState(0)==true) {
      kontal = 1;
    }
    else if (kon.getState(1)==true) {
      kontal = 2;
    } else {
      kontal = 3;
    }
    refresh();
  } else {

    println("lols");
  }
}
