// Interactive Button (step 1)// buttonfloat btnX, btnY, btnW, btnH;color btnUpState = color(200, 200, 200);color btnOverState = color(200, 200, 50);color btnDownState = color(255, 150, 20);color btnBackground = btnUpState;// moving squarefloat x = 25;float y = 30;float w = 10;float h = w;float xSpeed = 0;void setup(){  size(600, 100);  btnX = width/2;  btnY = height-20;  btnW = 50;  btnH = 20;}void draw(){  background(150);  rectMode(CENTER);  fill(btnBackground);  stroke(100);  rect(btnX, btnY, btnW, btnH);    fill(0);  noStroke();  rect(x, y, w, h);  x+=xSpeed;}void mousePressed(){  if (mouseX>btnX-btnW/2 && mouseX< btnX+btnW/2 &&      mouseY>btnY-btnH/2 && mouseY< btnY+btnH/2){    xSpeed+=.2;    btnBackground = btnDownState;  }}void mouseReleased(){    btnBackground = btnOverState;}void mouseMoved(){  if (mouseX>btnX-btnW/2 && mouseX< btnX+btnW/2 &&      mouseY>btnY-btnH/2 && mouseY< btnY+btnH/2){    cursor(HAND);    btnBackground = btnOverState;  } else {    cursor(ARROW);    btnBackground = btnUpState;  }}