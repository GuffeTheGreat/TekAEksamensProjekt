int page = 1;
int a = 0;
int totalPageCount = 8;
boolean changed; 
PImage Background[] = new PImage[totalPageCount+1]; 
String validCode = "YogaMagnetOst24";

TextField codeField;


void setup() {
  fullScreen();
  textAlign(CENTER);
  codeField = new TextField(width/5, height/3, 3*(width/5), (height/4));

  for (int i = 1; i <= totalPageCount; i++) { 
    Background[i] = loadImage("data/"+i+".jpg");
  }
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
      if (key == ENTER) {
        String code = codeField.getText();
        if (code.equals(validCode)) {
          println("yah");
          // login success
          fill(0, 255, 0);
          textSize(16);
          text("Login successful!", width/2, 180);
        } else {
          println("nope");
          // login failed
          fill(255, 0, 0);
          textSize(16);
          text("Invalid username.", width/2, 180);
        }
      }
    }
  }
}

void keyPressed() {
  codeField.keyPressed();
}

void keyReleased() {
  codeField.keyPressed();
}
