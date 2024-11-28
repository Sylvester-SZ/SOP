
//Clicktracker

ArrayList<String> clickData = new ArrayList<String>();

void mousePressed() {
  refresh();
  String data = "X:" + mouseX + ", Y:" + mouseY + ", Time:" + millis();
  clickData.add(data);
}

void end() {
  saveStrings("clickData.txt", clickData.toArray(new String[0]));
}
