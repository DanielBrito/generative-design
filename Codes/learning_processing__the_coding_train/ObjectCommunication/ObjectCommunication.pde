Particle p1, p2, p3;

void setup(){
    size(600, 400);
    p1 = new Particle(100, 100, 50);
    p2 = new Particle(500, 200, 70);
    p3 = new Particle();
}

void draw(){
    background(0);
    
    if(p2.overlaps(p1)){
        background(0, 255, 0);
    }
    
    if(p2.overlaps(p3)){
        background(0, 0, 255);
    }
    
    p2.x = mouseX;
    p2.y = mouseY;
    
    p1.display();
    p2.display();
    p3.display();
}
