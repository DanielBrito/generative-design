PImage img;

void setup(){
    size(600, 600);
    background(255);
    
    img = loadImage("processing.png");
}

void draw(){
}

void mousePressed(){
    image(img, mouseX-100, mouseY-100, 200, 200);
}
