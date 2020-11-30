void setup(){  size(400, 400);  background(50);  smooth();  Polygon p = new Polygon(0, 0, 175, 175, 8);  translate(width/2, height/2);  p.create(); }class Shape {  //class properties  int x;  int y;  int w;  int h;  //constructors  Shape (){  }  Shape (int x, int y, int w, int h){    this.x = x;    this.y = y;    this.w = w;    this.h = h;  }}class Polygon extends Shape{  int pts;  //constructor  Polygon (int x, int y, int w, int h, int pts){    //Optional call to superclass constructor must come first    super(x, y, w, h);    // add any remaining initializations    this.pts = pts;  }  //method to draw poly  void create(){    float px = 0, py = 0;    float angle = 0;    beginShape();    for (int i=0; i<pts; i++){      px = cos(radians(angle))*w;      py = sin(radians(angle))*h;      vertex(px, py);      angle+=360.0/pts;    }    endShape(CLOSE);  }}