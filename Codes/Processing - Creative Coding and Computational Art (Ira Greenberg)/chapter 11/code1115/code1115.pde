// Ravenous triangle IIfloat predCntrX, predCntrY;float predX[] = new float[3];float predY[] = new float[3];float predLen = 8.0;float predAng, predRot;// springing variablesfloat accelX, accelY;float springing = .01, damping = .95;void setup(){  size(400, 400);  predCntrX = width/2;  predCntrY = height/2;  smooth();}void draw(){  // repaint background  fill(255, 40);  rect(0, 0, width, height);  /* find distance for x and y    between prey and predator */  float deltaX = (pmouseX-predCntrX);  float deltaY = (pmouseY-predCntrY);  // create springing effect  deltaX *= springing;  deltaY *= springing;    // conditional keeps triangle from spinning endlessly  if (dist( pmouseX, pmouseY, predCntrX, predCntrY)>5){    accelX += deltaX;    accelY += deltaY;  }  // move predator's center  predCntrX += accelX;  predCntrY += accelY;  // slow down springing  accelX *= damping;  accelY *= damping;  // orient predator  predRot = atan2(accelY, accelX);  createRavenousSpringyTriangle();}void createRavenousSpringyTriangle(){  // create predator with some trig  fill(0);  beginShape();  for (int i=0; i<3; i++){    predX[i] = predCntrX+cos(radians(predAng)+predRot)*predLen;    predY[i] = predCntrY+sin(radians(predAng)+predRot)*predLen;    vertex(predX[i], predY[i]);    predAng += 120;  }  endShape(CLOSE);}