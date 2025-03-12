class Button {

  //instance variables
  float x, y;
  int w, h;
  boolean clicked;
  color highlight, normal;
  String text;
  PImage image;

  //constructor
  Button(String t, float _x, float _y, int _w, int _h, color norm, color high) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    text = t;
    highlight = high;
    normal = norm;
    clicked = false;
  }

  Button(PImage i, float _x, float _y, int _w, int _h, color norm, color high) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    image = i;
    highlight = high;
    normal = norm;
    clicked = false;
  }

  //Behaviour Functions
  boolean touchingMouse() {
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      return true;
    } else {
      return false;
    }
  }

  void show() {
    drawRect();
    drawLabel();
    checkForClick();
  }

  void drawRect() {
    if (touchingMouse()) {
      fill(highlight);
    } else {
      fill(normal);
    }
    stroke(0);
    strokeWeight(4);
    rect(x, y, w, h, 10);
  }

  void drawLabel() {
    if (touchingMouse()) {
      fill(normal);
    } else {
      fill(highlight);
    }
    if (image == null) {
      textSize(w/4);
      text(text, x, y);
    } else {
      image.resize(w/2, h/2);
      image(image, x, y);
    }
  }

  void checkForClick() {
    if (mouseReleased && touchingMouse()) {
      clicked = true;
    } else {
      clicked = false;
    }
  }
}
