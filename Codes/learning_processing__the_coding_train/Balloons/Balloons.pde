Bubble[] bubbles = new Bubble[50];

PImage[] balloons = new PImage[3];

int total = 0;

void setup() {
    size(640, 360);
    
    balloons[0] = loadImage("redBalloon.png");
    balloons[1] = loadImage("greenBalloon.png");
    balloons[2] = loadImage("blueBalloon.png");

    for (int i=0; i<bubbles.length; i++) {
        bubbles[i] = new Bubble(random(20, 100), balloons[(int)random(0, balloons.length)]);
    }
}

void draw() {
    background(255);

    for (int i=0; i<total; i++) {
        bubbles[i].ascend();
        bubbles[i].display();
        bubbles[i].top();
    }
}

void mousePressed(){
    
    if(total<bubbles.length){
        ++ total;
    }
}

void keyPressed(){
    
    if(total>0){
        --total;
    }
}
