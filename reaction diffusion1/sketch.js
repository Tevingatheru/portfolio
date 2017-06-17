var grid;
var next;

function setup() {
    createCanvas(400, 400);
    pixelDensity(1);
    grid = [];
    next = [];
    for(var x=0; x< width; x++){
        grid[x] = [];
        next[x] = [];
        for(var y=0; y< height; y++){
        grid[x] [y] = { a: random(1), b: random(1)};
        next[x] [y] = { a: 0, b: 0};
    }
    }
}

function draw() {
    background(51);
    
    for(var x = 0; x < width; x++){       
        for(var y=0; y < height; y++){
                next[x][y].a = grid[x][y].a * 1.012;
                next[x][y].b = grid[x][y].b * 50.009;
        }
    }
    
    
    
    loadPixels();
     for(var x=0; x< width; x++){       
        for(var y=0; y< height; y++){
            var pix=(x + y * width)*4;
            pixels[pix + 0] = floor(next[x][y].a*255);
            pixels[pix + 1] = 0;
            pixels[pix + 2] = floor(next[x][y].b*255);
            pixels[pix + 3] = 255;
    }
}
    updatePixels();
    swap();
}
function swap() {
    var temp = grid;
    grid = next;
    next = temp;
}