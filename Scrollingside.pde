int scrollPosition = 0; // Holder styr på scrollens position
int pageHeight = 1000;  // Højden af siden (indhold, der kan scrolles)


void mouseWheel(MouseEvent event) {
    // Justér scrollPosition baseret på musens scrollhjul
    scrollPosition += event.getCount() * 20; // 10 pixels pr. trin
    // Begræns scrollPosition til sidens højde
    scrollPosition = constrain(scrollPosition, 0, pageHeight - height);
    refresh();
}


void scrollSkaerm(){
    background(240);
    

    // Tegn indholdet baseret på scrollPosition
    pushMatrix();
    translate(0, -scrollPosition); // Flyt hele "verdenen" op/ned baseret på scrollPosition

    // Indhold på siden
    fill(200, 0, 0);
    rect(50, 100, 300, 100); // Eksempel: en rektangel
    fill(0);
    textSize(20);
    text("Velkommen til min scrollende side!", 50, 50);
    text("Sektion 1", 50, 250);
    text("Sektion 2", 50, 500);
    fill(0, 200, 0);
    ellipse(200, 750, 100, 100); // Eksempel: en cirkel
    fill(0);
    text("Tak for besøget!", 50, 950);

    popMatrix(); // Gendanner koordinatsystemet til standard
    
    // Fast del i toppen
    fill(#ffbc04);
    //fill(#ada6a5);
    rect(0,0,1000,75);
    image(logo,25,0,150,75);
}


void mission(){
   skaerm = 0;
   refresh();
}
