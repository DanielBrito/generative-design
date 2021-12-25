class Bubble{
    float x, y;
    float diameter, ySpeed;
    
    Bubble(float tempD){
        x = random(width);
        y = height;
        diameter = tempD;
        ySpeed = random(0.5, 2.5);
    }
    
    void ascend(){
        y -= ySpeed;
        x += random(-2, 2);
    }
    
    void display(){
        fill(0, 0, 100, 50);
        noStroke();
        ellipse(x, y, diameter, diameter);
    }
    
    void top(){
        if(y < -diameter/2){
            y = height+diameter/2;
        }
    }
}
