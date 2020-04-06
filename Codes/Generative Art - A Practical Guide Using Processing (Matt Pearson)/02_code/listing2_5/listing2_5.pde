
// variables
int diam = 10;  
float centX, centY;

// init
void setup() {
  size(500, 300);
  frameRate(24);
  smooth();
  background(180);
  centX = width/2;
  centY = height/2;
  stroke(0);
  strokeWeight(1); 
  noFill(); 
}

// frame loop
void draw() {
  if (diam <= 400) {
    // background(180);	
    // draw the circle 
    ellipse(centX, centY, diam, diam);
    diam += 10;
  }
}

