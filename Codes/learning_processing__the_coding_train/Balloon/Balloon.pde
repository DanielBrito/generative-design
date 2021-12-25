Bubble[] bubbles = new Bubble[10];

PImage balloon;

int total = 0;

void setup() {
    size(640, 360);
    balloon = loadImage("balloon.png");

    for (int i=0; i<bubbles.length; i++) {
        bubbles[i] = new Bubble(random(20, 100));
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
