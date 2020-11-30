// simple ball
int xpos, ypos;
int xspeed=3;
int yspeed=5;

void setup(){
  size(400, 400);
}

void draw(){
  background(0);
  rect(xpos, ypos, 10, 10); 
  xpos+=xspeed;
  ypos+=yspeed;
  if (xpos>=width-10 || xpos<=0){
    xspeed*=-1;
  }
  if (ypos>=width-10 || ypos<=0){
    yspeed*=-1;
  }
}
