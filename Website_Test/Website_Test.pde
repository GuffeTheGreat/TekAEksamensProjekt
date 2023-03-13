//import processing.core.*;

int page = 1;
int a = 0;
int totalPageCount = 8;
boolean changed;
PImage Background[] = new PImage[totalPageCount+1];
String validCode = "YogaMagnetOst24";

TextField codeField;
Button Ebox;
Button Sundhed;
Button Borger;
Button Netbank;
Button Luk;
Button Sidst;
Button Tilbage;



void setup() {

  // Fullscreen
  fullScreen();

  // Title
  surface.setTitle("Gamle mennesker hjælpe program");

  //Login Side
  textAlign(CENTER);
  codeField = new TextField(width/5, height/2-height/12, 3*(width/5), (height/8));


  // Load Layout
  for (int i = 1; i <= totalPageCount; i++) {
    Background[i] = loadImage("data/"+i+".jpg");
  }

  // Create Buttons
  Ebox = new Button("Ebox", width/5, height/7, width/5, height/7);
  Sundhed = new Button("Sundhed", 3*(width/5), height/7, width/5, height/7);
  Borger = new Button("Borger", width/5, 3*(height/7), width/5, height/7);
  Netbank = new Button("Netbank", 3*(width/5), 3*(height/7), width/5, height/7);
  Sidst = new Button("Sidst", width/5, 5*(height/7), width/5, height/7);
  Luk = new Button("Luk", height/12-height/13, height-height/12, width/13, height/13);
  Tilbage = new Button("Tilbage", 0, height-height/6, width/6, height/6);
}

void draw() {

  // Sideændring Checker
  if (page != a) {
    changed = true;
    a = page;
  }

  // Background Opdaterer
  if (changed == true) {
    image(Background[page], 0, 0);
  }

  // Load Side Elementer

  //Login Side
  if (page == 1) {
    codeField.update();
    Luk.draw();

    // Menu
  } else if (page == 2) {
    Ebox.draw();
    Sundhed.draw();
    Borger.draw();
    Netbank.draw();
    Sidst.draw();
    Luk.draw();

    // Eboks
  } else if (page == 3) {
    Tilbage.draw();
  }
}

void keyPressed() {
  if (page == 1) {
    if (key != 32 && key != CODED) {
      codeField.keyPressed();
    } else if (key == 32) {
      String code = codeField.getText();
      if (code.equals(validCode)) {
        page++;
      } else {
        fill(255, 0, 0);
        textSize(16);
        text("Invalid username.", width/2, 180);
      }
    }
  }
}

void mousePressed() {
  if (page == 2) {
    if (Ebox.isClicked()) {
      page++;
    }
    if (Sundhed.isClicked()) {
      // Login button is clicked
    }
    if (Borger.isClicked()) {
      // Login button is clicked
    }
    if (Netbank.isClicked()) {
      // Login button is clicked
    }
    if (Sidst.isClicked()) {
      // Login button is clicked
    }
    if (Luk.isClicked()) {
      exit();
    }
  } else if (page == 3) {
    if (Tilbage.isClicked()) {
      page = 2;
    }
  } else if (page == 1) {
    if (Luk.isClicked()) {
      exit();
    }
  }
}
