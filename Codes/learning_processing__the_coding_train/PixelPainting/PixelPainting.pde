PImage kitten;

void setup() {
    size(600, 338);
    kitten = loadImage("kitten.jpg");
    background(0);
}

void draw() {

    for (int i=0; i<100; i++) {
        
        float x = random(width);
        float y = random(height);

        color c = kitten.get(int(x), int(y));

        fill(c, 25);
        noStroke();
        ellipse(x, y, 15, 15);
    }
}
