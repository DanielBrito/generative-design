size(600,600);
background(255);
strokeWeight(5);
smooth();

float radius = 100;

int centX = width/2;
int centY = height/2;

float x, y, rad;

float lastx = -999;
float lasty = -999;

stroke(0, 30);
noFill();
ellipse(centX,centY,radius*2,radius*2);
stroke(20, 50, 70);

for (float ang = 0; ang <= 1440; ang += 5) {
    
    radius += 0.5;
    rad = radians(ang);
    
    x = centX + (radius * cos(rad));
    y = centY + (radius * sin(rad));
    
    if (lastx > -999) {
        
        line(x,y,lastx,lasty);
    }
    
    lastx = x;
    lasty = y;
}
