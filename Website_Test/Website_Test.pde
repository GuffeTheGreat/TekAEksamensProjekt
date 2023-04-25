int page = 1;
int a = 0;
int totalPageCount = 52;
boolean changed;
PImage Background[] = new PImage[totalPageCount+1];
String validCode = "426";
String NemID = "KimOlsen";

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
Button KontoBudget;
Button BetalOverfør;
Button PensionForsikring;
Button KontoBevægelser;
Button KortOversigt;
Button Overfør;
Button FastBetaling;
Button BetalRegning;
Button Pension;
Button Forsikring;
Button Sundhedsjournal;
Button SundhedAftaler;
Button Konsultationer;
Button PraktiserendeLæge;
Button Journal;
Button Henvisninger;
Button SundhedsAftaler;
Button Vacciner;
Button Laboratorie;
Button Medicinkort;
Button Medicin;
Button Recepter;
Button Registreringer;
Button ScreeningBryst;
Button ScreeningTarm;
Button ScreeningLivmoder;
Button Behandlingstestamente;
Button Stamkort;
Button Luk2;
Button Overblik;
Button LogAfBank;
Button Fortsæt;
Button Fortsæt2;

void setup() {

  // Fullscreen
  fullScreen();
  //noCursor(); // hide the default cursor
  //cursorImg = loadImage("cursor.png"); // load the cursor image
  //cursor(cursorImg, 16, 16); // set the custom cursor

  // Title
  surface.setTitle("Gamle mennesker hjælpe program");

  //Login Side
  textAlign(CENTER);
  codeField = new TextField(242, 371, 1685-242, 577-371);
  textAlign(CENTER);
  eboxField = new TextField(696, 365, 1220-696, 438-365);
  textAlign(CENTER);
  borgerField = new TextField(696, 365, 1220-696, 438-365);
  textAlign(CENTER);
  netbankField = new TextField(696, 365, 1220-696, 438-365);
  textAlign(CENTER);
  sundhedField = new TextField(696, 365, 1220-696, 438-365);


  // Load Layout
  for (int i = 1; i <= totalPageCount; i++) {
    Background[i] = loadImage("data/"+i+".jpg");
  }

  // Create Buttons
  Luk = new Button("Luk", height/12-height/13, height-height/12, width/13, height/13);
  Tilbage = new Button("Tilbage", 0, 953, 265, 1079-953);

  Ebox = new Button("E-boks", 77, 359, 908-77, 594-359);
  Sundhed = new Button("Sundhed.dk", 996, 636, 1838-996, 884-636);
  Borger = new Button("Borger.dk", 74, 638, 919-74, 879-638);
  Netbank = new Button("Netbank", 997, 359, 1838-977, 599-359);


  JyskeBank = new Button("Nordea", 197, 184, 1723-197, 389-184);
  DanskeBank = new Button("Danske Bank", 192, 426, 1724-192, 629-426);
  Nordea = new Button("Jyske Bank", 197, 666, 1722-197, 868-666);

  GlemteKode = new Button("Glemte Kode", 744, 570, 952-744, 602-570);
  Fortsæt = new Button("", 699, 467, 1222-699, 540-467);
  Fortsæt2 = new Button("", 601, 679, 1322-601, 859-679);

  Offentlige = new Button("Offentlige", 237, 277, 886-237, 801-277);
  Virksomheder = new Button("Virksomheder", 1034, 276, 1681-1034, 804-276);

  Personlige = new Button("Personlige Oplysninger", 71, 193, 924-71, 365-193);
  Sager = new Button("Sager", 995, 206, 1849-995, 367-206);
  Gæld = new Button("Gæld", 71, 434, 924-71, 609-434);
  Aftaler = new Button("Aftaler", 999, 441, 1845-1000, 606-441);
  Hjælpemidler = new Button("Serviceydelser", 71, 677, 925-71, 850-677);
  Ydelser = new Button("Økonomiske Ydelser", 993, 675, 1847-993, 849-675);

  Bolig = new Button("Bolig", 151, 355, 882-151, 769-355);
  PO = new Button("Personlige Oplysninger", 1034, 355, 1768-1034, 770-355);
  Luk2 = new Button("Luk Program", 1465, 0, 1919-1465, 123);

  Overblik = new Button("Overblik", 103, 246, 545-101, 360-246);
  KontoBudget = new Button("Konto & Budget", 103, 360, 545-102, 462-360);
  BetalOverfør = new Button("Betal & Overfør", 103, 464, 545-103, 555-464);
  PensionForsikring = new Button("Pension & Forsikring", 103, 555, 545-103, 663-555);
  LogAfBank = new Button("Log af", 1465, 0, 1919-1465, 123);

  KontoBevægelser = new Button("KontoBevægelser", 117, 364, 898-117, 567-364);
  KortOversigt = new Button("Kort Oversigt", 1023, 363, 1807-1023, 568-363);

  Overfør = new Button("Overfør", 434, 281, 1480-434, 441-281);
  FastBetaling = new Button("Fast Betaling", 434, 670, 1480-434, 840-670);
  BetalRegning = new Button("Betal Regning", 434, 478, 1480-434, 640-478);

  Pension = new Button("Pension", 435, 379, 1480-435, 541-370);
  Forsikring = new Button("Forskiring", 438, 579, 1486-438, 740-580);

  Sundhedsjournal = new Button("Sundhedsjournal", 188, 491, 836-188, 616-491);
  Registreringer = new Button("Registreringer", 1193, 501, 1691-1193, 620-501);

  Konsultationer  = new Button("Konsultationer", 675, 356, 1238-675, 476-356);
  PraktiserendeLæge  = new Button("Praktiserendelæge", 73, 556, 638-73, 678-556);
  Journal  = new Button("Journal", 1278, 756, 1840-1278, 877-756);
  Henvisninger  = new Button("Henvisninger", 675, 556, 1238-675, 678-556);
  SundhedAftaler  = new Button("Aftaler", 73, 356, 638-73, 478-356);
  Vacciner  = new Button("Vacciner", 1278, 356, 1840-1278, 479-356);
  Laboratorie  = new Button("Laboratorie", 73, 756, 638-73, 877-756);
  Medicinkort  = new Button("Medicinkort", 1278, 556, 1840-1278, 678-556);

  Recepter  = new Button("Recepter", 1078, 354, 1769-1078, 803-354);
  Medicin  = new Button("Medicin", 155, 354, 843-155, 803-354);

  ScreeningBryst  = new Button("ScreeningBryst", 74, 357, 637-74, 483-357);
  ScreeningTarm  = new Button("ScreeningTarm", 1277, 359, 1840-1277, 480-359 );
  ScreeningLivmoder  = new Button("ScreeningLivmoder", 1274, 560, 1843-1274, 683-560);
  Behandlingstestamente  = new Button("Behandlingstestamente", 675, 357, 1242-675, 483-357);
  Stamkort  = new Button("Stamkort", 73, 561, 638-73, 682-561);
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
    break;
  case 3:
    eboxField.update();
    break;
  case 16:
    netbankField.update();
    break;
  case 19:
    borgerField.update();
    break;
  case 34:
    sundhedField.update();
    break;
  }
}

void keyPressed() {
  if (key != 32 && key != CODED) {
    if (page == 1) {
      codeField.keyPressed();
    } else if (page == 3) {
      eboxField.keyPressed();
    } else if (page == 16) {
      netbankField.keyPressed();
    } else if (page == 19) {
      borgerField.keyPressed();
    } else if (page == 34) {
      sundhedField.keyPressed();
    }
  }
}

  void mousePressed() {
  println(""+mouseX, mouseY);
  switch (page) {
  case 1:
    if (Luk.isClicked()) {
      exit();
    } else if (Fortsæt2.isClicked()) {
      String code = codeField.getText();
      if (code.equals(validCode)) {
        page = 2;
      } else {
        fill(255, 0, 0);
        textSize(32);
        text("Forkert kode", width/2, 180+(636-173));
      }
    }
    break;
  case 2:
    if (Ebox.isClicked()) {
      page++;
    } else if (Sundhed.isClicked()) {
      page = 34;
    } else if (Borger.isClicked()) {
      page = 19;
    } else if (Netbank.isClicked()) {
      page = page+2;
    } else if (Luk2.isClicked()) {
      exit();
    }
    break;
  case 3:
    if (Tilbage.isClicked()) {
      page = 2;
    } else if (GlemteKode.isClicked()) {
      page = 5;
    } else if (Fortsæt.isClicked()) {
      String code = eboxField.getText();
      if (code.equals(NemID)) {
        page = 6;
      } else {
        fill(255, 0, 0);
        textSize(32);
        text("Forkert Login", width/2, 180+(636-173));
      }
    }
    break;
  case 4:
    if (Tilbage.isClicked()) {
      page = 2;
    } else if (JyskeBank.isClicked()) {
      page = 16;
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
    } else if (Luk2.isClicked()) {
      exit();
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
    } else if (Luk2.isClicked()) {
      exit();
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
    if (Tilbage.isClicked()) {
      page = 4;
    } else if (GlemteKode.isClicked()) {
      page = 31;
    } else if (Fortsæt.isClicked()) {
      String code = netbankField.getText();
      if (code.equals(NemID)) {
        page = 21;
      } else {
        fill(255, 0, 0);
        textSize(32);
        text("Forkert Login", width/2, 180+(636-173));
      }
    }
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
    } else if (Fortsæt.isClicked()) {
      String code = borgerField.getText();
      if (code.equals(NemID)) {
        page = 9;
      } else {
        fill(255, 0, 0);
        textSize(32);
        text("Forkert Login", width/2, 180+(636-173));
      }
    }
    break;
  case 20:
    if (Tilbage.isClicked()) {
      page = 19;
    }
    break;
  case 21:
    if (Tilbage.isClicked()) {
      page = 2;
    } else if (LogAfBank.isClicked()) {
      page = 4;
    } else if (KontoBudget.isClicked()) {
      page = 22;
    } else if (BetalOverfør.isClicked()) {
      page = 32;
    } else if (PensionForsikring.isClicked()) {
      page = 28;
    } else if (Overblik.isClicked()) {
      page = 21;
    }
    break;
  case 22:
    if (Tilbage.isClicked()) {
      page = 21;
    } else if (KontoBevægelser.isClicked()) {
      page = 23;
    } else if (KortOversigt.isClicked()) {
      page = 24;
    }
    break;
  case 23:
    if (Tilbage.isClicked()) {
      page = 2;
    } else if (LogAfBank.isClicked()) {
      page = 4;
    } else if (KontoBudget.isClicked()) {
      page = 22;
    } else if (BetalOverfør.isClicked()) {
      page = 32;
    } else if (PensionForsikring.isClicked()) {
      page = 28;
    } else if (Overblik.isClicked()) {
      page = 21;
    }
    break;
  case 24:
    if (Tilbage.isClicked()) {
      page = 2;
    } else if (LogAfBank.isClicked()) {
      page = 4;
    } else if (KontoBudget.isClicked()) {
      page = 22;
    } else if (BetalOverfør.isClicked()) {
      page = 32;
    } else if (PensionForsikring.isClicked()) {
      page = 28;
    } else if (Overblik.isClicked()) {
      page = 21;
    }
    break;
  case 25:
    if (Tilbage.isClicked()) {
      page = 2;
    } else if (LogAfBank.isClicked()) {
      page = 4;
    } else if (KontoBudget.isClicked()) {
      page = 22;
    } else if (BetalOverfør.isClicked()) {
      page = 32;
    } else if (PensionForsikring.isClicked()) {
      page = 28;
    } else if (Overblik.isClicked()) {
      page = 21;
    }
    break;
  case 26:
    if (Tilbage.isClicked()) {
      page = 2;
    } else if (LogAfBank.isClicked()) {
      page = 4;
    } else if (KontoBudget.isClicked()) {
      page = 22;
    } else if (BetalOverfør.isClicked()) {
      page = 32;
    } else if (PensionForsikring.isClicked()) {
      page = 28;
    } else if (Overblik.isClicked()) {
      page = 21;
    }
    break;
  case 27:
    if (Tilbage.isClicked()) {
      page = 2;
    } else if (LogAfBank.isClicked()) {
      page = 4;
    } else if (KontoBudget.isClicked()) {
      page = 22;
    } else if (BetalOverfør.isClicked()) {
      page = 32;
    } else if (PensionForsikring.isClicked()) {
      page = 28;
    } else if (Overblik.isClicked()) {
      page = 21;
    }
    break;
  case 28:
    if (Tilbage.isClicked()) {
      page = 21;
    } else if (Pension.isClicked()) {
      page = 23;
    } else if (Forsikring.isClicked()) {
      page = 24;
    }
    break;
  case 29:
    if (Tilbage.isClicked()) {
      page = 28;
    }
  case 30:
    if (Tilbage.isClicked()) {
      page = 28;
    }
    break;
  case 31:
    if (Tilbage.isClicked()) {
      page = 16;
    }
    break;
  case 32:
    if (Tilbage.isClicked()) {
      page = 21;
    } else if (Overfør.isClicked()) {
      page = 25;
    } else if (FastBetaling.isClicked()) {
      page = 27;
    } else if (BetalRegning.isClicked()) {
      page = 26;
    }
    break;
  case 33:
    if (Tilbage.isClicked()) {
      page = 34;
    }
    break;
  case 34:
    if (Tilbage.isClicked()) {
      page = 2;
    } else if (GlemteKode.isClicked()) {
      page = 33;
    } else if (Fortsæt.isClicked()) {
      String code = sundhedField.getText();
      if (code.equals(NemID)) {
        page = 35;
      } else {
        fill(255, 0, 0);
        textSize(32);
        text("Forkert Login", width/2, 180+(636-173));
      }
    }
    break;
  case 35:
    if (Tilbage.isClicked()) {
      page = 2;
    } else if (Sundhedsjournal.isClicked()) {
      page = 36;
    } else if (Registreringer.isClicked()) {
      page = 47;
    } else if (Luk2.isClicked()) {
      exit();
    }
    break;
  case 36:
    if (Tilbage.isClicked()) {
      page = 35;
    } else if (SundhedAftaler.isClicked()) {
      page = 37;
    } else if (Konsultationer.isClicked()) {
      page = 38;
    } else if (Vacciner.isClicked()) {
      page = 39;
    } else if (PraktiserendeLæge.isClicked()) {
      page = 40;
    } else if (Henvisninger.isClicked()) {
      page = 41;
    } else if (Medicinkort.isClicked()) {
      page = 42;
    } else if (Laboratorie.isClicked()) {
      page = 43;
    } else if (Journal.isClicked()) {
      page = 44;
    }
    break;
  case 37:
    if (Tilbage.isClicked()) {
      page = 36;
    }
    break;
  case 38:
    if (Tilbage.isClicked()) {
      page = 36;
    }
    break;
  case 39:
    if (Tilbage.isClicked()) {
      page = 36;
    }
    break;
  case 40:
    if (Tilbage.isClicked()) {
      page = 36;
    }
    break;
  case 41:
    if (Tilbage.isClicked()) {
      page = 36;
    }
    break;
  case 42:
    if (Tilbage.isClicked()) {
      page = 36;
    } else if (Medicin.isClicked()) {
      page = 45;
    } else if (Recepter.isClicked()) {
      page = 46;
    }
    break;
  case 43:
    if (Tilbage.isClicked()) {
      page = 36;
    }
    break;
  case 44:
    if (Tilbage.isClicked()) {
      page = 36;
    }
    break;
  case 45:
    if (Tilbage.isClicked()) {
      page = 42;
    }
    break;
  case 46:
    if (Tilbage.isClicked()) {
      page = 42;
    }
    break;
  case 47:
    if (Tilbage.isClicked()) {
      page = 35;
    } else if (ScreeningBryst.isClicked()) {
      page = 48;
    } else if (ScreeningTarm.isClicked()) {
      page = 49;
    } else if (ScreeningLivmoder.isClicked()) {
      page = 50;
    } else if (Behandlingstestamente.isClicked()) {
      page = 51;
    } else if (Stamkort.isClicked()) {
      page = 52;
    }
    break;
  case 48:
    if (Tilbage.isClicked()) {
      page = 47;
    }
    break;
  case 49:
    if (Tilbage.isClicked()) {
      page = 47;
    }
    break;
  case 50:
    if (Tilbage.isClicked()) {
      page = 47;
    }
    break;
  case 51:
    if (Tilbage.isClicked()) {
      page = 47;
    }
    break;
  case 52:
    if (Tilbage.isClicked()) {
      page = 47;
    }
    break;
  }
}
