class Rect extends Walker {
  
  void show() {
    rect(posx, posy, 15, 15);
  }
}

class Circle extends Walker {
  
  void show() {
    ellipse(posx, posy, 10, 10);
  }
}
