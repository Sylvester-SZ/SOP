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
    click.put("timestamp", millis()); // Valgfrit: inkluder en tidsstempel
    click.put("mission", missionnr);
    click.put("skaerm", skaerm);

    clickData.add(click);
    println("Data tilføjet: " + click);
  }

  //String data = "X:" + mouseX + ", Y:" + mouseY + ", Time:" + millis();
  //clickData.add(data);

  //missiondetection
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

    switch(missionnr) {
    case 1: // Telefonnummer
      if (hitbox(130, 1097, 97, 17, 2)) {
        completemission();
      }
      break;
    case 2: // Studiestart tekniker
      if (hitbox(60, 395, 400, 25, 8)) {
        completemission();
      }
    case 3: // Tømrer Fokus
      if (hitbox(386,268,500,20,5)
      ){
        completemission();
      }

      break;
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
