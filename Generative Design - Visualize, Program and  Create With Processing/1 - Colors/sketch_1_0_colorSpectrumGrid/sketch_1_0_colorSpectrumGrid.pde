int stepX;
int stepY;

void setup(){
   size(800, 400);
   background(0);
}

void draw(){
   colorMode(HSB, width, height, 100);
   
   stepX = mouseX+2;
   stepY = mouseY+2;
   
   for(int gridY=0; gridY<height; gridY+=stepY){
     
     for(int gridX=0; gridX<width; gridX+=stepX){
       
       fill(gridX, height-gridY, 100);
       rect(gridX, gridY, stepX, stepY);
     }
   }
}
