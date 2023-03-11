class Button {
  String label;
  int x, y, w, h;
  boolean clicked;

  Button(String label, int x, int y, int w, int h) {
    this.label = label;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.clicked = false;
  }

  void draw() {
    stroke(0);
    fill(255);
    rect(x, y, w, h);
    fill(0);
    textAlign(CENTER, CENTER);
    text(label, x + w/2, y+ h/2);
  }

  boolean isClicked() {
    if (mousePressed && mouseX >= x && mouseX <= x+ w && mouseY >= y && mouseY <= y + h) {
      clicked = true;
    } else {
      clicked = false;
    }
    return clicked;
  }
}
