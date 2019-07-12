Walker w[]= new Walker[5];
Rect rect[]= new Rect[5];
Circle c[]=  new Circle[5];

void setup() {
  size(600, 400);
  
  for (int i=0; i<w.length; i++) {
    w[i] = new Walker();
    c[i] = new Circle();
    rect[i]= new Rect();
  }
}

void draw() {
  background(100, 50, 100);
  
  for (int i=0; i<w.length; i++) {
    w[i].move();
    w[i].show();
    c[i].show();
    c[i].move();
    rect[i].move();
    rect[i].show();
  }
}
