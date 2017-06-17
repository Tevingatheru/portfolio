import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;

PeasyCam cam;
System sun;
//Planet planets ;
void setup() {
  size(600, 600, P3D) ;
 // int c=int(random(0,255));
   cam=new PeasyCam(this, 500);
  sun= new System(50, 0, 0,25,255);
  sun.Moons( 3, 1);
  //for( int i = 0; i<planets.length;i++){
  //planets[i]= new Planets();
  //}
  frameRate(15);
  
}
void draw(){
  background(0);
  //translate(width/2, height /2);
    lights();
  sun.show();
  sun.orbit();
  //for( int i = 0; i<planets.length;i++){
  //sun.Planets();
  //}
  
}