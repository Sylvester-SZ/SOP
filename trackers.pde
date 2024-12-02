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
    click.put("clickY", mouseY);
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

  switch(missionnr) {
  case 1: // Telefonnummer
    if (missionskaerm == 1) { // Scrolling
      if (hitbox(130, 1097, 97, 17, 2)) {
        completemission();
      }
    } else { // Submenu
      // Tilføj submenu-specifik betingelse her, hvis nødvendigt
    }
    break;

  case 2: // Studiestart tekniker
    if (missionskaerm == 1) { // Scrolling
      if (hitbox(60, 395, 400, 25, 8)) {
        completemission();
      }
    } else { // Submenu
      // Tilføj submenu-specifik betingelse her, hvis nødvendigt
    }
    break;

  case 3: // Tømrer Fokus
    if (missionskaerm == 1) { // Scrolling
      if (hitbox(386, 268, 500, 20, 5)) {
        completemission();
      }
    } else { // Submenu
      // Tilføj submenu-specifik betingelse her, hvis nødvendigt
    }
    break;

  case 4: // FN
    if (missionskaerm == 1) { // Scrolling
      if (hitbox(750, 1030, 90, 100, 2)) {
        completemission();
      }
    } else { // Submenu
      // Tilføj submenu-specifik betingelse her, hvis nødvendigt
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

    break;
  default: // Catch
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
