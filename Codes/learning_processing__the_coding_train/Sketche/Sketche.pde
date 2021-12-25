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
            
            float bright = brightness(kitten.pixels[location]);
            
            pixels[location] = bright>mouseX ? color(255) : color(0);
        }
    }
    
    updatePixels();
}
