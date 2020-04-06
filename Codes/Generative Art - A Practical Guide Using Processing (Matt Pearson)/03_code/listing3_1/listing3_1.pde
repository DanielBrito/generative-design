
size(500,100);
background(255);
strokeWeight(5);
smooth();

stroke(0, 30);
line(20,50,480,50);

stroke(20, 50, 70);
int step = 10;
float lastx = -999;
float lasty = -999;
float ynoise = random(10);
float y;
for (int x=20; x<=480; x+=step) {
  y = 10 + noise(ynoise) * 80;  // between 10 and 90
  if (lastx > -999) {
     line(x, y, lastx, lasty); 
  }
  lastx = x;
  lasty = y;
  ynoise += 0.1;
}

