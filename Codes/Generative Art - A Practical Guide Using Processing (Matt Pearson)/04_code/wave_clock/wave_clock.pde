

//================================= global vars

int _num = 10;    
float _angnoise, _radiusnoise;
float _xnoise, _ynoise;
float _angle = -PI/2;
float _radius = 100;
float _strokeCol = 254;
int _strokeChange = -1;


//================================= init

void setup() {
  size(500, 300);
  smooth(); 
  frameRate(30);
  
  clearBackground();
  
  _angnoise = random(10);
  _radiusnoise = random(10);
  _xnoise = random(10);
  _ynoise = random(10);
}

void clearBackground() {
  background(255);
}

//================================= frame loop

void draw() {
  
  _radiusnoise += 0.005;
  _radius = (noise(_radiusnoise) * 550) +1;
  
  _angnoise += 0.005;
  _angle += (noise(_angnoise) * 6) - 3;
  if (_angle > 360) { _angle -= 360; }
  if (_angle < 0) { _angle += 360; }
  
  // wobble centre
  _xnoise += 0.01;
  _ynoise += 0.01;
  float centreX = width/2 + (noise(_xnoise) * 100) - 50;
  float centreY = height/2 + (noise(_ynoise) * 100) - 50;
  
  float rad = radians(_angle);
  float x1 = centreX + (_radius * cos(rad));
  float y1 = centreY + (_radius * sin(rad));
  
  // opposite
  float opprad = rad + PI;
  float x2 = centreX + (_radius * cos(opprad));
  float y2 = centreY + (_radius * sin(opprad)); 
  
  noFill();
  _strokeCol += _strokeChange;
  if (_strokeCol > 254) { _strokeChange *= -1; }
  if (_strokeCol < 0) { _strokeChange *= -1; }
  stroke(_strokeCol, 60);
  strokeWeight(1);
  line(x1, y1, x2, y2);
}


//================================= 

void keyPressed() {
  if (keyCode == ENTER) {
    saveFrame("waveclock-####.tif");
  }
}

void mousePressed() {
  clearBackground();
}


