/* Drawing Shapes Ira Greenberg, November 2, 2005 *///declare global variablesfloat  radiusX, radiusY;//controls rate of screen fadeint screenFadeValue = 20;//controls maximum size of shapeint sizeMax = 30;//setup structure runs once void setup(){  size(400, 400);  background(130, 130, 240);  noFill();}/*draw function begins loop required by mouseMoved and mouseDragged functions later in the code*/void draw(){}/*custom function incrementally  paints the screen-called when the mouse is pressed*/void fadeScreen(){  fill(130, 130, 240, screenFadeValue);  noStroke();  rect(0, 0, width, height);}/*custom function paints shapes, boolean argument 'isDragged' controls shape style*/void paintShapes(boolean isDragged){  if (isDragged){    noStroke();    ellipse(mouseX, mouseY, radiusX, radiusY);  }  else {    noFill();    stroke(random(255));    rect(mouseX, mouseY, random(sizeMax), random(sizeMax));  }}/* set shape size and  fill color on press*/void mousePressed(){  // call custom function to clear screen  fadeScreen();  radiusX = random(sizeMax);  radiusY = random(sizeMax);  // set fill color for drawing  fill(random(255), random(255), random(255), 100);}// paint stroked rectanglesvoid mouseMoved(){  // call custom function  paintShapes(false);}// paint filled ellipsesvoid mouseDragged(){  // call custom function  paintShapes(true);}