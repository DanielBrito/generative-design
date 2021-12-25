float spacing=100;
int x=0, y=0;

void setup(){
    size(640, 360);
}

void draw(){
    
    background(0);    
    
    spacing += random(-2, 2);
    
    stroke(255);
    strokeWeight(2);
    
    x = 0;
    while(x<width){
        
        stroke(255, 0, 0);
        line(x, 0, x, height);
        stroke(0, 255, 0);
        line(x+10, 0, x+10, height);
        stroke(0, 0, 255);
        line(x+20, 0, x+20, height);
        x += spacing;
    }
    
    y = 0;
    while(y<height){
        stroke(255);
        line(0, y, width, y);
        y += spacing;
    }
}
