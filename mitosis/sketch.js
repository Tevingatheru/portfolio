var cel = [];
var m = [];
function setup() {
createCanvas(400, 200);
   // m.push( new mitosis());
    cel.push(new Cell());
    cel.push(new Cell());
}

function draw() {
  background(220);
    
    for( var i =0; i<cel.length;i++){
    cel[i].move();
    cel[i].show();
        }
        // if(this.cel.x == -1){
        // this.cel.x= width;
        // }else if(this.cel.x == width+1){
        // this.cel.x=0;
        // }else if(this.cel.y == height+1){
        // this.cel.y=0;
        // }else if(this.cel.y == -1){
        // this.cel.y= width;
        // }
}
    function mousePressed() { //mouse listener
  
    for( var i =cel.length-1; i >= 0; i--){//mouse click loop
        if(cel[i].clicked(mouseX,mouseY)){//condition for the loop 
            cel.push(cel[i].mitosis());//calls the function mitosis
            cel.push(cel[i].mitosis());
            cel.splice( i, 1);
            //console.log("clicked");
    }
    }
}
