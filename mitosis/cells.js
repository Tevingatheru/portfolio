function Cell(pos, r,c) {
    if(pos){
        this.pos =  pos.copy();
    }else{
    this.pos = createVector(random(width), random(height));
    }
   
    this.r= random(10,30);
    this.c= color(random(60,255),random(85, 100), random(20, 255), 100);
this.clicked= function(x, y){
    var d = dist(this.pos.x,this.pos.y, x, y);
    if(d < this.r){
        return true;
    }else{
        return false;
    }
    
}

    this.move = function() {
        var vel = p5.Vector.random2D();
       
        this.pos.add(vel);
        
         
    }
    this.mitosis = function() {
         var cell2 = new Cell(this.pos, this.r/2, this.c);
        // this.pos.x += random(-this.r, this.r)
   
   return cell2;
        
   
}
    this.show = function(){
        fill(this.c);
        stroke(this.c);
        ellipse(this.pos.x, this.pos.y,this.r,this.r);
    }
    
}