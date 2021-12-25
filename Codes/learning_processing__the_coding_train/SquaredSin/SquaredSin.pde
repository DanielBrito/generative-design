size(480, 400);
background(255);

stroke(200);
strokeWeight(3);
line(0, height/2, width, height/2);

stroke(0);
strokeWeight(2);

int x1, y1, x2, y2;
int stepX = 40;
int stepY = 40;
int dir = -1;

x1 = 0;
y1 = height/2;

x2 = x1+stepX;
y2 = y1+stepY;

while(x1<width){
    
    stroke(0);
    strokeWeight(2);
    
    line(x1, y1, x2, y2);
    
    x1 = x2;
    y1 = y2;
    
    x2 = x1+stepX*2;
    y2 = y1+stepY*2*dir;
    
    dir *= -1;
}
