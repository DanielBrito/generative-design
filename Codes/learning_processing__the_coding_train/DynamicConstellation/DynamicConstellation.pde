float x = 100;
float y = 100;

void setup(){
    size(500, 500);
    background(0);
}

void draw(){
    // Running in background...
}

void star(float x, float y){
    
    fill(255, 255, 0);
    stroke(255);
    strokeWeight(2);
    
    beginShape();
    vertex(x, y-50);
    vertex(x+14, y-20);
    vertex(x+47, y-15);
    vertex(x+23, y+7);
    vertex(x+29, y+40);
    vertex(x, y+25);
    vertex(x-29, y+40);
    vertex(x-23, y+7);
    vertex(x-47, y-15);
    vertex(x-14, y-20);
    endShape(CLOSE);
}

void mousePressed(){
    star(random(0,500), random(0, 500));
}
