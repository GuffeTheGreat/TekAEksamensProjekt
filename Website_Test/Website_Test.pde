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

void setup() {
  fullScreen();
  textAlign(CENTER);
  codeField = new TextField(width/5, height/3, 3*(width/5), (height/4));

  for (int i = 1; i <= totalPageCount; i++) { 
    Background[i] = loadImage("data/"+i+".jpg");
  }

  Ebox = new Button("Ebox", width/5, height/7, width/5, height/7);
  Sundhed = new Button("Sundhed", 3*(width/5), height/7, width/5, height/7);
  Borger = new Button("Borger", width/5, 3*(height/7), width/5, height/7);
  Netbank = new Button("Netbank", 3*(width/5), 3*(height/7), width/5, height/7);
  Sidst = new Button("Sidst", width/5, 5*(height/7), width/5, height/7);
  Luk = new Button("Luk", 3*(width/5), 5*(height/7), width/5, height/7);
}

void draw() {

  if (page == a) {
    a = page;
  } else {
    changed = true;
    a = page;
  }

  if (changed == true) { 
    image(Background[page], 0, 0);
  }

  if (page == 1) {
    codeField.update();

    // check login credentials
    if (keyPressed) {
      if (key == ' ') {
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
  if (page == 2) {
    Ebox.draw();
    Sundhed.draw();
    Borger.draw();
    Netbank.draw();
    Sidst.draw();
    Luk.draw();
  }
}

void keyPressed() {
  if (page == 1 && key != 32 && key != CODED) {
    codeField.keyPressed();
  }
}

void mousePressed() {
    if (page == 2) {  
      if (Ebox.isClicked()) {
        // Login button is clicked
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
    }
  }
  
