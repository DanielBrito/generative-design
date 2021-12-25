PImage kitten;

void setup(){
    size(600, 338);
    kitten = loadImage("kitten.jpg");
}

void draw(){
    
    kitten.loadPixels();
    
    loadPixels();
    
    for(int x=0; x<width; x++){
        
        for(int y=0; y<height; y++){
            
            int location = x+y*width;
            
            float r = red(kitten.pixels[location]);
            float g = green(kitten.pixels[location]);
            float b = blue(kitten.pixels[location]);
            
            float distance = dist(mouseX, mouseY, x, y);
            float factor = map(distance, 0, 100, 2, 0);
            
            pixels[location] = color(r*factor, g*factor, b*factor);
        }
    }
    
    updatePixels();
}
