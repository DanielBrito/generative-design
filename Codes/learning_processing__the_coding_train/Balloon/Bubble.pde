class Bubble{
    
    float x, y;
    float diameter;
    
    Bubble(float tempD){
        x = random(width);
        y = height;
        diameter = tempD;
    }
    
    void ascend(){
        y--;
        x += random(-2, 2);
    }
    
    void display(){
        
        imageMode(CENTER);
        image(balloon, x, y);
    }
    
    void top(){
        if(y < -diameter/2){
            y = height+diameter/2;
        }
    }
}
