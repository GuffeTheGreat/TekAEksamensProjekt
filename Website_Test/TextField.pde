class TextField {
  int x, y, w, h;
  String text = "";
  boolean active = true;

  TextField(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void update() {
    stroke(0);
    if (active) {
    fill(255);
    } else {
      fill(200);
    }
    rect(x, y, w, h);
    noStroke();
    fill(0);
    textSize(14);
    text(text, x+5, y+15);
  }

  void keyPressed() {
    if (active && keyCode != ENTER && keyCode != BACKSPACE) {
      text += key;
    } else if (active && keyCode == BACKSPACE) {
      text = text.substring(0, max(0, text.length()-1));
    }
  }

  String getText() {
    return text;
  }
}
