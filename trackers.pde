int realmouseY = 0;


//Clicktracker
import java.util.ArrayList;
import java.util.HashMap;
ArrayList<HashMap<String, Integer>> clickData = new ArrayList<>();

//ArrayList<String> clickData = new ArrayList<String>();

void mousePressed() {
  refresh();
  //println(hitbox(130, 1097, 97, 17));
  println(""+mouseX+","+realmouseY);
  //data//
  if (skaerm!= 0) {
    HashMap<String, Integer> click = new HashMap<>();
    click.put("clickX", mouseX);
    click.put("clickY", realmouseY);
    click.put("programtime", millis()); // Valgfrit: inkluder en tidsstempel
    click.put("mission", missionnr);
    click.put("skaerm", skaerm);
    click.put("missionstart", missionstart);

    clickData.add(click);
    println("Data tilføjet: " + click);
  }

  //String data = "X:" + mouseX + ", Y:" + mouseY + ", Time:" + millis();
  //clickData.add(data);


  // Mission Detection
  println(missionskaerm);
  println(skaerm);
  println(missionnr);
  switch(missionnr) {
  case 1: // Telefonnummer
    if (missionskaerm == 1) { // Scrolling
      if (hitbox(130, 1097, 97, 17, 2)) {
        completemission();
      }
    } else { // Submenu
      if (hitbox(20, 205, 110, 15, 9)) {
        completemission();
      }
    }
    break;

  case 2: // Studiestart tekniker
    if (missionskaerm == 1) { // Scrolling
      if (hitbox(60, 395, 400, 25, 8)) {
        completemission();
      }
    } else { // Submenu
      if (hitbox(60, 395, 400, 25, 8)) {
        completemission();
      }
    }
    break;

  case 3: // Tømrer Fokus
    if (missionskaerm == 1) { // Scrolling
      if (hitbox(386, 268, 500, 20, 5)) {
        completemission();
      }
    } else { // Submenu
      if (hitbox(386, 268, 500, 20, 5)) {
        completemission();
      }
    }
    break;

  case 4: // FN
    if (missionskaerm == 1) { // Scrolling
      if (hitbox(750, 1030, 90, 100, 2)) {
        completemission();
      }
    } else { // Submenu
      
       if (hitbox(175, 275, 300,280,10)) {
        completemission();
      }
    }
    break;
  case 5: // EAN nummer
    if (missionskaerm == 1) { // Scrolling
      if (hitbox(130, 1155, 170, 17, 2)) {
        completemission();
      }
    } else { // Submenu
      if (hitbox(20, 265, 195, 15, 9)) {
        completemission();
      }
    }
    case 6: // Grundlæggelsesår
    if (missionskaerm == 1) { // Scrolling
      if (hitbox(599, 1050, 12, 40, 2)) {
        completemission();
      }
    } else { // Submenu
      if (hitbox(125, 355, 135, 15, 9)) {
        completemission();
      }
    }
    break;
  }


  //Menu-navigation
  switch(missionskaerm) {
  case 1: //Scrolling
    if (hitbox(50, 140, width-100, 140, 2)) {
      skaerm = 4;
      scrollPosition = 0;
      refresh();
    } else if (hitbox(50, 140*2+30*1, width-100, 140, 2)) {
      skaerm = 5;
      scrollPosition = 0;
      refresh();
    } else if (hitbox(50, 140*3+30*2, width-100, 140, 2)) {
      skaerm = 6;
      scrollPosition = 0;
      refresh();
    } else if (hitbox(50, 140*4+30*3, width-100, 140, 2)) {
      skaerm = 7;
      scrollPosition = 0;
      refresh();
    } else if (hitbox(50, 140*5+30*4, width-100, 140, 2)) {
      skaerm = 8;
      scrollPosition = 0;
      refresh();
    }
    break;
  case 2: //Submenu
    switch(selected) {
    case 1:
      if (hitbox(215, 100, 190, 20, 3)) {
        skaerm = 4;
        refresh();
      }
      if (hitbox(425, 100, 175, 20, 3)) {
        skaerm = 5;
        refresh();
      }
      if (hitbox(625, 100, 175, 20, 3)) {
        skaerm = 6;
        refresh();
      }
      if (hitbox(215, 135, 190, 20, 3)) {
        skaerm = 7;
        refresh();
      }
      if (hitbox(425, 135, 175, 20, 3)) {
        skaerm = 8;
        refresh();
      }
      break;
        
      case 3:
      if (hitbox(215, 100, 190, 20, 3)) {
        skaerm = 9;
        refresh();
      }
      if (hitbox(425, 100, 175, 20, 3)) {
        skaerm = 10;
        refresh();
      }
      if (hitbox(625, 100, 175, 20, 3)) {
        skaerm = 11;
        refresh();
      }
    }
    if (hitbox(220, 10, 190, 50, 3)) {
      selected = 1;
      refresh();
    } else if (hitbox(445, 10, 195, 50, 3)) {
      //selected = 2;
      refresh();
    } else if (hitbox(645, 10, 195, 50, 3)) {
      selected = 3;
      refresh();
    } else {
      selected = 4;
      refresh();
    }

    break;
  default: // Catch
    refresh();
    println("You fucked uppppp");
    break;
  }
}

boolean hitbox(int x0, int y0, int x1, int y1, int reqskaerm) {
  int tolerance = 2;
  x0 = x0- tolerance;
  y0 = y0- tolerance;
  x1 = x1+x0+tolerance;
  y1 = y1+y0+tolerance;
  if ((mouseX>x0)&&(mouseX<x1)&&(realmouseY>y0)&&(realmouseY<y1)&&(reqskaerm==skaerm)) {
    return true;
  } else {
    return false;
  }
}
