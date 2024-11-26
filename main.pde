import controlP5.*;

int skaerm = 0;
PImage logo;
color scroll = color(#ffbc04);

ControlP5 cp5start,cp5scroll;




void setup() {
  size(1000, 562);
  
  //Images
  logo = loadImage("logotransparent.png");
  
  // cp5
  cp5start = new ControlP5(this);
  cp5scroll = new ControlP5(this);
  PFont pfont = createFont("Arial",5,true);
  ControlFont font = new ControlFont(pfont,20);
  

  
  //knapper
    //startside
  cp5start.addButton("accepter").setSize(300,75).setPosition(width/2.80, (height)-height/2).setFont(font).updateSize();
    //scrollingside
  cp5scroll.addButton("mission").setSize(width/8,73).setPosition(width-width/8, 1).setFont(font).setColorBackground(color(255, 188, 4)).updateSize();
  
  //Startfunktioner
  mission = generatemission();
  refresh();
}

void draw() {
}

void refresh() {
  switch(skaerm) {
  case 1:
    scrollSkaerm();
    cp5start.setVisible(false);
    cp5scroll.setVisible(true);
    break;
  default:
    startskaerm();
    cp5start.setVisible(true);
    cp5scroll.setVisible(false);
    break;
  }
}


void mousePressed() {
  refresh();
}




//import fi.iki.elonen.NanoHTTPD;
//import java.io.*;

//MyServer server;

//void setup() {
//    size(800, 600);
//    background(255);
//    println("Starter server...");
//    try {
//        server = new MyServer();
//    } catch (IOException e) {
//        e.printStackTrace();
//    }
//}

//void draw() {
//    background(200);
//    fill(0, 102, 153);
//    rect(mouseX - 50, mouseY - 50, 100, 100); // Tegn en rektangel omkring musen

//    // Gem grafikken som en PNG-fil, så browseren kan hente den
//    saveFrame("output/frame.png");
//}

//public class MyServer extends NanoHTTPD {
//    public MyServer() throws IOException {
//        super(8080);
//        start(SOCKET_READ_TIMEOUT, false);
//        println("Server kører på http://localhost:8080/");
//    }

//    @Override
//    public Response serve(IHTTPSession session) {
//        String uri = session.getUri();
//        if (uri.equals("/image")) {
//            // Send det genererede billede til browseren
//            File file = new File("output/frame.png");
//            if (file.exists()) {
//                try {
//                    FileInputStream fis = new FileInputStream(file);
//                    return newChunkedResponse(Response.Status.OK, "image/png", fis);
//                } catch (IOException e) {
//                    e.printStackTrace();
//                }
//            }
//            return newFixedLengthResponse(Response.Status.NOT_FOUND, "text/plain", "Billede ikke fundet.");
//        } else {
//            // HTML-side, der viser billedet
//            String html = "<html><body>" +
//                          "<h1>Processing Test</h1>" +
//                          "<img src='/image' alt='Dynamisk grafik'/>" +
//                          "</body></html>";
//            return newFixedLengthResponse(html);
//        }
//    }
//}
