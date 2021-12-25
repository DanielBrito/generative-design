float circleX, circleY;
float R, G, B, alpha;
float circleWidth, circleHeight;

void setup(){
    size(640, 360);
    background(255);
}

void draw(){
    
    R = random(0, 256);
    G = random(0, 256);
    B = random(0, 256);
    
    alpha = random(95, 100);
    
    fill(R, G, B, alpha);
    
    strokeWeight(0);
    stroke(0);
    
    circleX = random(0, 640);
    circleY = random(0, 360);
    
    circleWidth = random(30, 70);
    circleHeight = random(40, 90);
    
    ellipse(circleX, circleY, circleWidth, circleHeight);
}
