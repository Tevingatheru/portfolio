walker w[]= new walker[5];
circle c[]=  new circle[5];
void setup(){
  size(600,400);
  for(int i=0;i<w.length; i++){
    w[i] = new walker();
    c[i] =new circle();
}
}
void draw() {
  background(100,50,100);
  for(int i=0;i<w.length; i++){
    w[i].move();
  w[i].show();
  c[i].show();
  c[i].move();
  }
}