float directionX = .56, directionY = .83;float[] speeds = {.75, 1.3, 2.2, .92, 1.5};float[] x = new float[5], y = new float[5];void setup(){  size(400, 400);  noStroke();  fill(128);  smooth();}void draw(){  background(255);  for (int i=0; i<5; i++){    x[i] += directionX*speeds[i];    y[i] += directionY*speeds[i];    rect(x[i], y[i], 6, 6);  }}