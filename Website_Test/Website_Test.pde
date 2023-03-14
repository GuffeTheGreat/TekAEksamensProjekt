int page = 1;
int a = 0;
int totalPageCount = 8;
boolean changed;
PImage Background[] = new PImage[totalPageCount+1];
String validCode = "YogaMagnetOst24";
String NemID = "Henriette.Olsen";

TextField codeField;
TextField eboxField;
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


void setup() {

  // Fullscreen
  fullScreen();

  // Title
  surface.setTitle("Gamle mennesker hjælpe program");

  //Login Side
  textAlign(CENTER);
  codeField = new TextField(width/5, height/2-height/12, 3*(width/5), (height/8));
  textAlign(CENTER);
  eboxField = new TextField(width/5, height/2-height/12, 3*(width/5), (height/8));

  // Load Layout
  for (int i = 1; i <= totalPageCount; i++) {
    Background[i] = loadImage("data/"+i+".jpg");
  }

  // Create Buttons
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
  
  GlemteKode = new Button("Glemte Kode", width/3, (height/2-height/12)+height/8+height/64,width/3,height/8);
  Offentlige = new Button("Offentlige", width/7, height/6, 2*(width/7), height/2);
  Virksomheder = new Button("Virksomheder", 4*(width/7), height/6, 2*(width/7), height/2);

}

void draw() {

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
    
    eboxField.update();
    Tilbage.draw();
    GlemteKode.draw();
    
   
    
    // Netbank
  } else if (page == 4) {
    Tilbage.draw();
    Nordea.draw();
    DanskeBank.draw();
    JyskeBank.draw();
        
  } else if (page == 5) {
    Tilbage.draw();

  } else if (page == 6) {
    Tilbage.draw();
    Virksomheder.draw();
    Offentlige.draw();
  } else if (page == 7) {
    Tilbage.draw();
  }else if (page == 8) {
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
      page = page+2;
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
    } else if (GlemteKode.isClicked()) {
      page = 5;
    }
  } else if (page == 1) {
    if (Luk.isClicked()) {
      exit();
    }
  } else if (page == 4) {
    if (Tilbage.isClicked()) {
      page = 2;
    }
  } else if (page == 5) {
    if (Tilbage.isClicked()) {
      page = 3;
    }
  } else if (page == 6) {
    if (Tilbage.isClicked()) {
      page = 2;
    } else if (Virksomheder.isClicked()) {
      page = 8;
    } else if (Offentlige.isClicked()) {
      page = 7;
    }
  } else if (page == 7) {
    if (Tilbage.isClicked()) {
    page = 6;
    }
  } else if (page == 8) {
    if (Tilbage.isClicked()) {
    page = 6;
    }
  }
}
