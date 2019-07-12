class Walker {
  int posx;
  int posy;

  Walker() {     
    posx = int(random(width)) ;
    posy = int(random(height)) ;
  } 
  
  int dir;
  
  void move() {
    dir= int(random(25));
    posx =int(constrain(posx, 0, width-5));
    posy = int(constrain(posy, 0, height-5));
    
    switch (dir) {
    case 18: 
    case 4:
    case 11:
    case 13:
      posx++;
      break;
      
    case 1:  
    case 15:
    case 10:
    case 14:
      posx--;
      break;
      
    case 2: 
    case 24:
    case 9:
    case 12:
      posy--;
      break;
    case 16: 
    case 7:
    case 8:
    case 19:
      posy++;
      break;
      
    default:       
      break;
    }
    
    if(posx >= width-5){
      posx = 0;
   
    }else if(posx<=1){
      posx = width;
     
    }else if( posy > height-5){
      posy = 0;
      
    }else if(posy<=1){
      posy = height;
      
    }
  }
  void show() {    
 // Default color and stroke
    fill(0);
    stroke(210, 0, 0);

  }
}
