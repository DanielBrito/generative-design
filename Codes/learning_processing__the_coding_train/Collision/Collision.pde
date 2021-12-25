float circleX = 0;
boolean leftToRight, rightToLeft;

void setup(){
    size(640, 360);
    background(255);
}

void draw(){    
    
    if(circleX==640){
        rightToLeft = true;
        leftToRight = false;
    }
    
    if(circleX==0){
        rightToLeft = false;
        leftToRight = true;
    }
    
    if(leftToRight){
        background(255);
        
        fill(0);
        ellipse(circleX, 180, 24, 24);
        
        circleX += 10;
    }
    
    if(rightToLeft){
        background(0);
        
        fill(255);
        ellipse(circleX, 180, 50, 50);
        
        circleX -= 10;
    }
}
