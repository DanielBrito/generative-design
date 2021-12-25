size(500, 500);
background(0);

loadPixels();
for (int x=0; x<width; x++) {
    for(int y=0; y<height; y++){
        float distance = dist(x, y, width/2, height/2);
        int index = x+y*width;
        pixels[index] = color(distance);
    }    
}
updatePixels();
