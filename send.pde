//import java.net.HttpURLConnection;
//import java.net.URL;
//import java.io.OutputStream;
//import java.io.InputStreamReader;
//import java.io.BufferedReader;


//void sendCollectedData() {
//  try {
//    // Konverter ArrayList til JSON-streng
//    String json = convertToJSON(clickData);
//    println("JSON til sending: " + json);
    
//    // HTTP POST-anmodning
//    String urlString = "http://127.0.0.1:5000/";
//    URL url = new URL(urlString);
//    HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//    conn.setRequestMethod("POST");
//    conn.setRequestProperty("Content-Type", "application/json; utf-8");
//    conn.setRequestProperty("Accept", "application/json");
//    conn.setDoOutput(true);

//    // Send JSON-streng til serveren
//    try (OutputStream os = conn.getOutputStream()) {
//      byte[] input = json.getBytes("utf-8");
//      os.write(input, 0, input.length);
//    }

//    // Læs respons fra serveren
//    int code = conn.getResponseCode();
//    println("Response Code: " + code);
//    if (code == HttpURLConnection.HTTP_OK) {
//      BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
//      StringBuilder response = new StringBuilder();
//      String responseLine = null;
//      while ((responseLine = br.readLine()) != null) {
//        response.append(responseLine.trim());
//      }
//      println("Response: " + response.toString());
//    } else {
//      println("Error in response");
//    }

//    // Tøm dataen efter succesfuld sending
//    clickData.clear();

//  } catch (Exception e) {
//    e.printStackTrace();
//  }
//}

//String convertToJSON(ArrayList<HashMap<String, Integer>> data) {
//  // Byg JSON-streng manuelt
//  StringBuilder json = new StringBuilder("[");
//  for (int i = 0; i < data.size(); i++) {
//    HashMap<String, Integer> entry = data.get(i);
//    json.append("{");
//    json.append("\"clickX\":").append(entry.get("clickX")).append(",");
//    json.append("\"clickY\":").append(entry.get("clickY")).append(",");
//    json.append("\"timestamp\":").append(entry.get("timestamp"));
//    json.append("}");
//    if (i < data.size() - 1) json.append(",");
//  }
//  json.append("]");
//  return json.toString();
//}
