//import java.util.ArrayList;
//import java.util.HashMap;

//ArrayList<HashMap<String, Integer>> clickData = new ArrayList<>();

//void setup() {
//  size(400, 400);
//  println("Klik rundt for at samle data, og tryk 'S' for at sende.");
//}

//void draw() {
//  background(200);
//  text("Klik for at samle data. Tryk 'S' for at sende.", 50, height / 2);
//}

//void mousePressed() {
//  // Gem klikdata i en HashMap
//  HashMap<String, Integer> click = new HashMap<>();
//  click.put("clickX", mouseX);
//  click.put("clickY", mouseY);
//  click.put("timestamp", millis()); // Valgfrit: inkluder en tidsstempel
  
//  clickData.add(click);
//  println("Data tilføjet: " + click);
//}

//void keyPressed() {
//  if (key == 's' || key == 'S') {
//    sendCollectedData();
//  }
//}
