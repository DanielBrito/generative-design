//Example 1: accelerated motion using multiplicationint w = 20;int h = 10;int x = 0;int y;float speed = 1;void setup(){  size(400, 400);  y = height/2;  frameRate(30);}void draw(){  background(255);  speed*=1.1;  rect(speed, y, w, h);}