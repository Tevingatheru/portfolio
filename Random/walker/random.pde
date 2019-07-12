class Random {
  PVector pos;
  PVector dir2;

  Random() {
    pos = new PVector(0, 0, 0);
  }
  
  void move() {   
    dir2 = new PVector(random(-1, 1), random(-1, 1), random(-1, 1));
    pos.x=pos.x+dir2.x;
    pos.y=pos.y+dir2.y;
    pos.z=pos.z+dir2.z;
    
    //limit movement
    pos.x= constrain(pos.x, 0, width-5);
    pos.y= constrain(pos.y, 0, height-5); 
    pos.z= constrain(pos.z, 0, height/2);
  }
  
  void show() {   
    //Show a point
    stroke(255, 100);
    point(pos.x, pos.y, pos.z);  
    
    //show a box
    //fill(255, 90); 
    //translate(pos.x, pos.y, pos.z);
    //box(10);
  }
}
