int x1, y1, x2, y2;
int radius;

void setup(){
    
    size(500, 500);
    background(255);
    
    x1 = width/2;
    y1 = height/2;
    
    radius = 100;
    
    ellipseMode(CENTER);
    
}

void draw(){
    
    background(255);
    
    if(dist(x1, y1, mouseX, mouseY)<radius){
        
        fill(255, 0, 0);
    }
    else{
    
        fill(0, 0, 255);
    }
    
    noStroke();
    
    ellipse(mouseX, mouseY, radius, radius);
    ellipse(x1, y1, radius, radius);
}
