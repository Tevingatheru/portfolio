import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;
PeasyCam cam;
Random ran;
void setup(){
  size(400,400,P3D);
  ran=new Random();
  //cam=new PeasyCam(this, 300);
  // ran.move();
  background(51);
}
void draw(){  
  ran.show();
 ran.move();
}