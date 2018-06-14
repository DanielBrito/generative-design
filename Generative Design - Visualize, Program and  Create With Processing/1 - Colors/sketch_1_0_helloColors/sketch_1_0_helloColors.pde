void setup(){
  size(720,720);
  noCursor();
}

void draw(){
   colorMode(HSB, 360, 100, 100);
   rectMode(CENTER);
   noStroke();
   background(mouseY/2, 100, 100);
   
   fill(360-mouseY/2, 100, 100);
   rect(360, 360, mouseX+1, mouseX+1);
}