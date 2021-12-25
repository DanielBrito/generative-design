void setup(){
    size(500, 500);
}

void draw(){
    
    background(0);
    strokeWeight(2);
    stroke(255);
    
    int x = 0;
    while(x<mouseX){
        line(x, 0, x, height);
        x += 20;
    }
    
    int y = 0;
    while(y<mouseY){
        line(0, y, width, y);
        y += 20;
    }
}
