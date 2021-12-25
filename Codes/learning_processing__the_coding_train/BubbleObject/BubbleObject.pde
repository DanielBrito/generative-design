Bubble b;

void setup(){
    size(640, 360);
    b = new Bubble(10);
}

void draw(){
    background(255);
    
    stroke(0);
    strokeWeight(3);
    line(width/2, 0, width/2, 10);
    
    b.ascend();
    b.display();
    b.pop();
}

void mousePressed(){
    b.grow();
}
