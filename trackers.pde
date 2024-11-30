
//Clicktracker
import java.util.ArrayList;
import java.util.HashMap;
ArrayList<HashMap<String, Integer>> clickData = new ArrayList<>();

//ArrayList<String> clickData = new ArrayList<String>();

void mousePressed() {
  refresh();
  HashMap<String, Integer> click = new HashMap<>();
  click.put("clickX", mouseX);
  click.put("clickY", mouseY);
  click.put("timestamp", millis()); // Valgfrit: inkluder en tidsstempel
  click.put("mission", missionnr);
  
  clickData.add(click);
  println("Data tilføjet: " + click);
  //String data = "X:" + mouseX + ", Y:" + mouseY + ", Time:" + millis();
  //clickData.add(data);
}

void end() {
  sendCollectedData();
  saveStrings("clickData.txt", clickData.toArray(new String[0]));
}
