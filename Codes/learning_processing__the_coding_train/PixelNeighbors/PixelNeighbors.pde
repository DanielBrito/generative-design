PImage kitten;

void setup(){
    size(600, 338);
    kitten = loadImage("kitten.jpg");
}

void draw(){
    
    kitten.loadPixels();
    
    loadPixels();
    
    for(int x=0; x<width-1; x++){
        
        for(int y=0; y<height; y++){
            
            int location1 = x+y*width;
            int location2 = (x+1)+y*width;
            
            float bright1 = brightness(kitten.pixels[location1]);
            float bright2 = brightness(kitten.pixels[location2]);
            
            float diff = abs(bright1-bright2);
            pixels[location1] = color(diff);
        }
    }
    
    updatePixels();
}
