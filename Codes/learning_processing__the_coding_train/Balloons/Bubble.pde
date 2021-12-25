class Bubble{
    
    float x, y;
    float diameter;
    PImage image;
    
    Bubble(float tempD, PImage img){
        x = random(width);
        y = height;
        diameter = tempD;
        image = img;
    }
    
    void ascend(){
        y--;
        x += random(-2, 2);
    }
    
    void display(){
        
        imageMode(CENTER);
        image(image, x, y);
    }
    
    void top(){
        if(y < -diameter/2){
            y = height+diameter/2;
        }
    }
}
