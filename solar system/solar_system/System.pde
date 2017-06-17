class System{
  float radius,   distance,   angle,   orbitSpeed;
  int col1;
  int col2;
   PVector v;
 System[] planets;
  System(float r, float d, float o, int c1,int c2){
     radius =r;
     distance=d;    
     angle=random(TWO_PI);
     orbitSpeed=o;
     col1= c1;
     col2= c2;
     v=PVector.random3D();
     v.mult(distance);     
  } 
   void Moons(int total, int level) {     
    planets= new System[total];    
    for(int i=0; i< planets.length; i++){
      float r= random(30,40);
      float d= random(70,200);
      float o= random(-0.05, 0.05)*level;
      int ca1= int(random(50,255));
      int ca2= int(random(10,255));      
      if(o!=0){
      planets[i]= new System(r/(level*2), d/level, o, ca1, ca2);
    }
      if(level< 3 ){
        int num=1;
      planets[i].Moons(num,level+1);      
    }
   }
}  
  void orbit(){// rotation of the planets roung th sun
   angle=angle+orbitSpeed;
    if(planets != null){
      for(int i=0; i< planets.length;i++){      
        planets[i].orbit();        
    }
  }
 } 
  void show(){
    PVector v2 = new PVector(1,0,1);
    PVector p = v.cross(v2);
    pushMatrix();// allow to tranlate from source
    rotate(angle,p.x,p.y,p.z);    
    translate(v.x,v.y,v.z);     
    fill(255,col1,col2,80);
    noStroke();
    sphere(radius);
     if(planets !=null){
        for(int i=0; i<planets.length;i++){
          planets[i].show();  
         } 
     }
     popMatrix();// allow to tranlate from source
  } 
}