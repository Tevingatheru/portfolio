import peasy.*;
PeasyCam cam;
Random ran;

void setup() {
  size(400, 400, P3D);
  ran = new Random();
  //translate(50, 50, 0);
  cam = new PeasyCam(this, 500);
  cam.setMinimumDistance(5);
  cam.setMaximumDistance(1000);
  cam.setDistance(500);

  background(51);
}

void draw() { 
  ran.show();
  ran.move();
  rotateZ(-.10);
  rotateX(-.10);
}
