void setup() {
    size(500, 500);
    background(0);
}

void draw() { 

    println("mouseX = " + mouseX + " | mouseY = " + mouseY);

    // Quadrant I (Red):
    if (mouseX>0 && mouseX<=249 && mouseY>0 && mouseY<=249) {
        fill(255, 0, 0);
        rect(0, 0, 250, 250);

        fill(0);
        rect(0, 250, 250, 250);
        rect(250, 0, 250, 250);
        rect(250, 250, 250, 250);
    } else {
        fill(0);
        rect(0, 0, 250, 250);
    }
    
    // Quadrant II (Blue):
    if (mouseX>=250 && mouseX<=500 && mouseY>=0 && mouseY<=250) {
        fill(0, 0, 255);
        rect(250, 0, 250, 250);

        fill(0);
        rect(0, 0, 250, 250);
        rect(0, 250, 250, 250);
        rect(250, 250, 250, 250);
    } else {
        fill(0);
        rect(250, 0, 250, 250);
    }
    
    // Quadrant III (Green):
    if (mouseX>=0 && mouseX<=250 && mouseY>=250 && mouseY<=500) {
        fill(0, 255, 0);
        rect(0, 250, 250, 250);

        fill(0);
        rect(0, 0, 250, 250);
        rect(250, 0, 250, 250);
        rect(250, 250, 250, 250);
    } else {
        fill(0);
        rect(0, 250, 250, 250);
    }

    // Quadrant IV (Yellow):
    if (mouseX>=250 && mouseX<=500 && mouseY>=250 && mouseY<=500) {
        fill(255, 255, 0);
        rect(250, 250, 250, 250);

        fill(0);
        rect(0, 0, 250, 250);
        rect(0, 250, 250, 250);
        rect(250, 0, 250, 250);
    }
}
