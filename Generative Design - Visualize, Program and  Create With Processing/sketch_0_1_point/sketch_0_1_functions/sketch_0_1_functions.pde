void setup(){
  translate(40, 15);
  drawStar();
  translate(20, 50);
  drawStar();
}

void drawStar(){
  line(0, -10, 0, 10);
  line(-8, -5, 8, 5);
  line(-8, 5, 8, -5);
}
