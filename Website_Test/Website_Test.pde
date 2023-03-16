int page = 1;
int a = 0;
int totalPageCount = 60;
boolean changed;
PImage Background[] = new PImage[totalPageCount+1];
String validCode = "1";
String NemID = "2";

PImage cursorImg;

TextField codeField;
TextField eboxField;
TextField borgerField;
TextField sundhedField;
TextField netbankField;
Button Ebox;
Button Sundhed;
Button Borger;
Button Netbank;
Button Luk;
Button Sidst;
Button Tilbage;
Button Nordea;
Button JyskeBank;
Button DanskeBank;
Button Virksomheder;
Button Offentlige;
Button GlemteKode;
Button Personlige;
Button Sager;
Button Gæld;
Button Ydelser;
Button Hjælpemidler;
Button Aftaler;
Button Bolig;
Button PO;
int kl = (22*width-height)/52;
int kh = height/7;

void setup() {

  // Fullscreen
  fullScreen();
  noCursor(); // hide the default cursor
  cursorImg = loadImage("cursor.png"); // load the cursor image
  cursor(cursorImg, 16, 16); // set the custom cursor

  // Title
  surface.setTitle("Gamle mennesker hjælpe program");

  //Login Side
  textAlign(CENTER);
  codeField = new TextField(width/5, height/2-height/12, 3*(width/5), (height/8));
  textAlign(CENTER);
  eboxField = new TextField(width/5, height/2-height/12, 3*(width/5), (height/8));
  textAlign(CENTER);
  borgerField = new TextField(width/5, height/2-height/12, 3*(width/5), (height/8));
  textAlign(CENTER);
  netbankField = new TextField(width/5, height/2-height/12, 3*(width/5), (height/8));
  textAlign(CENTER);
  sundhedField = new TextField(width/5, height/2-height/12, 3*(width/5), (height/8));


  // Load Layout
  for (int i = 1; i <= totalPageCount; i++) {
    Background[i] = loadImage("data/"+i+".jpg");
  }

  // Create Buttons

  kl = (22*width-height)/52;
  kh = height/8;

  Luk = new Button("Luk", height/12-height/13, height-height/12, width/13, height/13);
  Tilbage = new Button("Tilbage", 0, height-height/6, width/6, height/6);

  Ebox = new Button("E-boks", 2*(height/12-height/13)+width/13, height/7, (22*width-height)/52, height/7);
  Sundhed = new Button("Sundhed.dk", (height/12-height/13)/2+width/2, height/7, (22*width-height)/52, height/7);
  Borger = new Button("Borger.dk", 2*(height/12-height/13)+width/13, 3*(height/7), (22*width-height)/52, height/7);
  Netbank = new Button("Netbank", (height/12-height/13)/2+width/2, 3*(height/7), (22*width-height)/52, height/7);
  Sidst = new Button("Sidst Gjorde Du", 2*(height/12-height/13)+width/13, 5*(height/7), 2*((22*width-height)/52)+(height/12-height/13), height/7);


  Nordea = new Button("Nordea", width/6+width/128, height/13, width-(width/6+width/128)*2, 3*(height/13));
  DanskeBank = new Button("Danske Bank", width/6+width/128, 5*(height/13), width-(width/6+width/128)*2, 3*(height/13));
  JyskeBank = new Button("Jyske Bank", width/6+width/128, 9*(height/13), width-(width/6+width/128)*2, 3*(height/13));

  GlemteKode = new Button("Glemte Kode", width/3, (height/2-height/12)+height/8+height/64, width/3, height/8);

  Offentlige = new Button("Offentlige", width/7, height/6, 2*(width/7), height/2);
  Virksomheder = new Button("Virksomheder", 4*(width/7), height/6, 2*(width/7), height/2);

  Personlige = new Button("Personlige Oplysninger", 2*(height/12-height/13)+width/13, kh, kl, kh);
  Sager = new Button("Sager", (height/12-height/13)/2+width/2, kh, kl, kh);
  Gæld = new Button("Gæld", 2*(height/12-height/13)+width/13, 3*kh, kl, kh);
  Aftaler = new Button("Aftaler", (height/12-height/13)/2+width/2, 3*kh, kl, kh);
  Hjælpemidler = new Button("Serviceydelser", 3*(height/12-height/13)+width/13, 5*kh, kl, kh);
  Ydelser = new Button("Økonomiske Ydelser", 3*(height/12-height/13)/2+width/2, 5*kh, kl, kh);

  Bolig = new Button("Bolig", width/7, height/6, 2*(width/7), height/2);
  PO = new Button("Personlige Oplysninger", 4*(width/7), height/6, 2*(width/7), height/2);
}

void draw() {
  /*
    //Mus
   stroke(255, 0, 0);
   noFill();
   ellipse(mouseX, mouseY, 50, 50);
   */

  // Sideændring Checker
  if (page != a) {
    changed = true;
    a = page;
  }

  // Background Opdaterer
  if (changed == true) {
    println(page);
    image(Background[page], 0, 0, width, height);
    changed = false;
  }

  // Load Side Elementer

  switch (page) {
  case 1:
    codeField.update();
    Luk.draw();
    break;
  case 2:
    Ebox.draw();
    Sundhed.draw();
    Borger.draw();
    Netbank.draw();
    Sidst.draw();
    Luk.draw();
    break;
  case 3:
    eboxField.update();
    Tilbage.draw();
    GlemteKode.draw();
    break;
  case 4:
    Tilbage.draw();
    Nordea.draw();
    DanskeBank.draw();
    JyskeBank.draw();
    break;
  case 5:
    Tilbage.draw();
    break;
  case 6:
    Tilbage.draw();
    Virksomheder.draw();
    Offentlige.draw();
    break;
  case 7:
    //Tilbage.draw();
    break;
  case 8:
    //Tilbage.draw();
    break;
  case 9:
    Tilbage.draw();
    Ydelser.draw();
    Sager.draw();
    Personlige.draw();
    Gæld.draw();
    Aftaler.draw();
    Hjælpemidler.draw();
    break;
  case 10:
    Tilbage.draw();
    break;
  case 11:
    Tilbage.draw();
    break;
  case 12:
    Tilbage.draw();
    PO.draw();
    Bolig.draw();
    break;
  case 13:
    Tilbage.draw();
    break;
  case 14:
    Tilbage.draw();
    break;
  case 15:
    Tilbage.draw();
    break;
  case 16:

    break;
  case 17:
    Tilbage.draw();
    break;
  case 18:
    Tilbage.draw();
    break;
  case 19:
    borgerField.update();
    Tilbage.draw();
    GlemteKode.draw();
    break;
  case 20:
    Tilbage.draw();
    break;
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
  } else if (page == 3) {
    if (key != 32 && key != CODED) {
      eboxField.keyPressed();
    } else if (key == 32) {
      String code = eboxField.getText();
      if (code.equals(NemID)) {
        page = page+3;
      } else {
        fill(255, 0, 0);
        textSize(16);
        text("Invalid username.", width/2, 180);
      }
    }
  } else if (page == 19) {
    if (key != 32 && key != CODED) {
      borgerField.keyPressed();
    } else if (key == 32) {
      String code = borgerField.getText();
      if (code.equals(NemID)) {
        page = 9;
      } else {
        fill(255, 0, 0);
        textSize(16);
        text("Invalid username.", width/2, 180);
      }
    }
  }
}

void mousePressed() {
  switch (page) {
  case 1:
    if (Luk.isClicked()) {
      exit();
    }
    break;
  case 2:
    if (Ebox.isClicked()) {
      page++;
    }
    if (Sundhed.isClicked()) {
      // Login button is clicked
    }
    if (Borger.isClicked()) {
      page = 19;
    }
    if (Netbank.isClicked()) {
      page = page+2;
    }
    if (Sidst.isClicked()) {
      // Login button is clicked
    }
    if (Luk.isClicked()) {
      exit();
    }
    break;
  case 3:
    if (Tilbage.isClicked()) {
      page = 2;
    } else if (GlemteKode.isClicked()) {
      page = 5;
    }
    break;
  case 4:
    if (Tilbage.isClicked()) {
      page = 2;
    }
    break;
  case 5:
    if (Tilbage.isClicked()) {
      page = 3;
    }
    break;
  case 6:
    if (Tilbage.isClicked()) {
      page = 2;
    } else if (Virksomheder.isClicked()) {
      page = 8;
    } else if (Offentlige.isClicked()) {
      page = 7;
    }
    break;
  case 7:
    if (Tilbage.isClicked()) {
      page = 6;
    }
    break;
  case 8:
    if (Tilbage.isClicked()) {
      page = 6;
    }
    break;
  case 9:
    if (Tilbage.isClicked()) {
      page = 2;
    } else if (Sager.isClicked()) {
      page = 15;
    } else if (Aftaler.isClicked()) {
      page = 13;
    } else if (Ydelser.isClicked()) {
      page = 10;
    } else if (Personlige.isClicked()) {
      page = 12;
    } else if (Gæld.isClicked()) {
      page = 14;
    } else if (Hjælpemidler.isClicked()) {
      page = 11;
    }
    break;
  case 10:
    if (Tilbage.isClicked()) {
      page = 9;
    }
    break;
  case 11:
    if (Tilbage.isClicked()) {
      page = 9;
    }
    break;
  case 12:
    if (Tilbage.isClicked()) {
      page = 9;
    } else if (PO.isClicked()) {
      page = 17;
    } else if (Bolig.isClicked()) {
      page = 18;
    }
    break;
  case 13:
    if (Tilbage.isClicked()) {
      page = 9;
    }
    break;
  case 14:
    if (Tilbage.isClicked()) {
      page = 9;
    }
    break;
  case 15:
    if (Tilbage.isClicked()) {
      page = 9;
    }
    break;
  case 16:

    break;
  case 17:
    if (Tilbage.isClicked()) {
      page = 12;
    }
    break;
  case 18:
    if (Tilbage.isClicked()) {
      page = 12;
    }
    break;
  case 19:
    if (Tilbage.isClicked()) {
      page = 2;
    } else if (GlemteKode.isClicked()) {
      page = 20;
    }
    break;
  case 20:
    if (Tilbage.isClicked()) {
      page = 19;
    }

    break;
  }
}
