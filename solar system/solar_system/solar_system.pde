import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;

PeasyCam cam;
System sun;

void setup() {
  size(600, 600, P3D) ;

  cam=new PeasyCam(this, 500);
  sun= new System(50, 0, 0, 25, 255);
  sun.Moons( 3, 1);
  frameRate(15);
}
void draw() {
  background(0);
  lights();
  sun.show();
  sun.orbit();
}
