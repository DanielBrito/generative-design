void setup() {
    size(500, 500);
}

void draw(){
    createET();
}

void createET(){
    
    background(150);
    
    // Head
    fill(0, 255, 0);
    circle(250, 150, 150);

    // Eyes
    fill(255, 255, 255);
    circle(200, 150, 30);
    circle(250, 150, 30);

    fill(0, 0, 0);
    circle(200+(mouseX%10), 150+(mouseY%10), 10);
    circle(250+(mouseX%10), 150+(mouseY%10), 10);

    // Mouth
    line(210, 190, 250, 200);

    // Arms
    line(150, 280, 250, 230);
    line(340, 300, 280, 240);

    // Legs
    line(220, 300, 220, 400);
    line(280, 300, 280, 400);

    // Body
    fill(0, 255, 0);
    circle(250, 275, 100);
    
    // Box
    fill(255, 255, 0);
    rect(mouseX, mouseY, 20, 20);
}

void mousePressed(){
    // Angry eyes
    fill(255, 0,0);
    circle(200+(mouseX%10), 150+(mouseY%10), 10);
    circle(250+(mouseX%10), 150+(mouseY%10), 10);
}
