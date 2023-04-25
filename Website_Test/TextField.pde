class TextField {
  int x, y, w, h;
  String text = "";

  TextField(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void update() {
    fill(255);
    noStroke();
    rect(x+5, y+5, w-10, h-10);
    fill(0);
    textSize(h/2);
    text(text, x+5+w/2, y+10+h/2);
  }

  void keyPressed() {
    if (keyCode != ENTER && keyCode != BACKSPACE) {
      text += key;
    } else if (keyCode == BACKSPACE) {
      text = text.substring(0, max(0, text.length()-1));
    }
  }

  String getText() {
    return text;
  }
}
