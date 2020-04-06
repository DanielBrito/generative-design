int _numChildren = 3; 	// limit on number of branches
int _maxLevels = 3;  	// the maximum depth

Branch _trunk;    	// the trunk of our fractal "tree"

// ======================= init

void setup() {
  size(750,500);
  background(255);
  noFill();
  smooth();
  newTree();
}

void newTree() {
  _trunk = new Branch(1, 0, width/2, 50);
  _trunk.drawMe();
}

// ======================= Branch object

class Branch {
  float level, index;  
  float x, y;
  float endx, endy;
  
  Branch(float lev, float ind, float ex, float why) {
   level = lev; 
   index = ind;
   updateMe(ex, why);
  }
  
  void updateMe(float ex, float why) {
   x = ex;
   y = why;
   endx = x + 150;
   endy = y + 15;
  }
  
  void drawMe() { 
    line(x, y, endx, endy); 
    ellipse(x, y, 5, 5);
  }
  
}

