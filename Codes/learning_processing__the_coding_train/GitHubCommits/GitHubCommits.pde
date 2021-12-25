size(1000, 200);
background(0);
strokeWeight(1);
stroke(255);

for(int y=0; y<height; y+=20){
    for(int x=0; x<width; x+=20){
        fill(0, 255, 0, random(50, 200));
        rect(x, y, 20, 20);
    }
}
