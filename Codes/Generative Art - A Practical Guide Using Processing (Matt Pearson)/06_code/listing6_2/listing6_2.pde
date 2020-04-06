int _num = 10;	

void setup() {
  size(500,300);
  background(255);
  smooth();
  strokeWeight(1);
  fill(150, 50);
  drawCircles();
}

void draw() {
  // do nothing
}

void mouseReleased() {
  drawCircles();    
}

void drawCircles() {
  for (int i=0; i<_num; i++) { 
    Circle thisCirc = new Circle();	
  }
}


//======================================== Circle Object

class Circle { 
  float x, y;		
  float radius; 		
  color linecol, fillcol; 	
  float alph;		
 
  Circle () { 
    x = random(width);
    y = random(height);
    radius = random(100) + 10; 
    linecol = color(random(255), random(255), random(255));
    fillcol = color(random(255), random(255), random(255));
    alph = random(255);					
  }
}


