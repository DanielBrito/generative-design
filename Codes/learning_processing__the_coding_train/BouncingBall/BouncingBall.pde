// Modified from: https://processing.org/examples/bounce.html

// Width of the shape
int radius = 60;  

// Starting position of shape:
float xPos, yPos;        

// Speed of the shape:
float xSpeed = 5;  
float ySpeed = 5;

int xDirection = 1;  // Left or Right
int yDirection = 1;  // Top to Bottom

void setup() {

    // Configuring the scene:
    size(640, 360);
    noStroke();
    frameRate(30);
    ellipseMode(RADIUS);

    // Set the starting position of the shape
    xPos = width/2;
    yPos = height/2;
}

void draw() {

    background(255);

    // Update the position of the shape:
    xPos += ( xSpeed * xDirection );
    yPos += ( ySpeed * yDirection );

    // Test to see if the shape exceeds the boundaries of the screen.
    // If it does, reverse its direction by multiplying by -1:
    
    if (xPos > width-radius || xPos < radius) {
        xDirection *= -1;
    }
    
    if (yPos > height-radius || yPos < radius) {
        yDirection *= -1;
    }

    // Draw the shape
    fill(0);
    ellipse(xPos, yPos, radius, radius);
}
