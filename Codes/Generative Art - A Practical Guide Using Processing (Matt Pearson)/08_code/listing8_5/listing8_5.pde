//================================================ init

FractalRoot pentagon; 
int _maxlevels = 5;

void setup() {
  size(1000, 1000); 
  smooth();
  pentagon = new FractalRoot();	
  pentagon.drawShape();		
}

//================================================ Point object

class PointObj {				
   float x, y;				
   PointObj(float ex, float why) {		
     x = ex; y = why;			
   }						
}						

//================================================ FractalRoot object

class FractalRoot {						
  PointObj[] pointArr = new PointObj[5];			
  Branch rootBranch;					
  							
  FractalRoot() {						
      float centX = width/2;				
      float centY = height/2;				
      int count = 0;					
      for (int i = 0; i<360; i+=72) {			
        float x = centX + (400 * cos(radians(i)));	
        float y = centY + (400 * sin(radians(i)));	
        pointArr[count] = new PointObj(x, y);		
        count++;					
      }							
      rootBranch = new Branch(0, 0, pointArr);		
  }							
  						
  void drawShape() {			
    rootBranch.drawMe();			
  }						
}						

//================================================ Branch object

class Branch {			
  int level, num;				
  PointObj[] outerPoints = {};		
  						
  Branch(int lev, int n, PointObj[] points) {	
    level = lev;				
    num = n;					
    outerPoints = points;			
  }					
  
  void drawMe() {
    strokeWeight(5 - level);      
    // draw outer shape
    for (int i = 0; i < outerPoints.length; i++) {
     int nexti = i+1;					
     if (nexti == outerPoints.length) { nexti = 0; }	
     line(outerPoints[i].x, outerPoints[i].y, outerPoints[nexti].x, outerPoints[nexti].y);	
   } 					
  }
  
}

