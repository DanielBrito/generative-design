/*Simple Repeating Wave Pattern Ira Greenberg, October 13, 2005 */float y = 0;float angle = 0;float amplitude = 5;float waveGap = 24;float frequency = 5;void setup(){  size(400, 400);  background(255);  noFill();  frameRate(30);}void draw(){  // stop drawing at the bottom of the sketch window  if (y<height){    float py = 0;    for (int i=0; i<width; i++){      py = y+sin(radians(angle))*amplitude;      point(i, py);      angle+=frequency;    }    y+=waveGap;  //step waves down  }}