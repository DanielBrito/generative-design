PImage kitten;
int brushSize = 30;
color c;

void setup() {
    size(600, 338);
    background(255);

    kitten = loadImage("kitten.jpg");
}

void draw() {
    kitten.loadPixels();
    
    loadPixels();

    for (int x=0; x<width; x++) {

        for (int y=0; y<height; y++) {

            float distance = dist(mouseX, mouseY, x, y);

            if (distance<brushSize) {

                int location = x+y*width;

                float r = red(kitten.pixels[location]);
                float g = green(kitten.pixels[location]);
                float b = blue(kitten.pixels[location]);

                pixels[location] = color(r, g, b);
            }
        }
    }

    updatePixels();
}
