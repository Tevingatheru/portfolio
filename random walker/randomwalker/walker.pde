class walker{
  int posx;
  int posy;
  
  walker() {     
  posx = int(random(width)) ;
  posy = int(random(height)) ;
} 
  int dir;
   void move(){
     dir= int(random(25));
     posx =int(constrain(posx, 0,width-5));
  posy = int(constrain(posy, 0,height-5));
    switch (dir){
       case 18: case 4:case 11:case 13:
       posx++;
       break;
       case 1:  case 15:case 10:case 14:
       posx--;
       break;
       case 2: case 24:case 9:case 12:
       posy--;
       break;
       case 16: case 7:case 8:case 19:
       posy++;
       break;
       default:       
       break;
    }
    
  }
  void show(){    
    
    rect(posx,posy,15,15);
    fill(0);
     stroke(210,0,0);
     
     //point(posx,posy);
  }
  
}