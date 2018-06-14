void draw(){

    int tileCountX = (int) map(mouseX, 0, width, 2, 100);
    int tileCountY = (int) map(mouseY, 0, height, 2, 10);

    float tileWidth = width/(float)tileCountX;
    float tileHeight = height/(float)tileCountY;
    color interCol;

    for(int gridY=0; gridY<tileCountY; gridY++){

        color col1 = colorsLeft[gridY];
        color col2 = colorsRight[gridY];

        for(int gridX=0; gridX<tileCountX; gridX++){

            float amount = map(gridX, 0, tileCountX-1, 0, 1);

            interCol = lerpColor(col1, col2, amount);

            fill(interCol);
            float posX = tileWidth*gridX;
            float posY = tileHeight*gridY;
            rect(posX, posY, tileWidth, tileHeight);
        }
    }
}