class Particle{
    float x, y;
    float r;
    
    Particle(float tempX, float tempY, float tempR){
        x = tempX;
        y = tempY;
        r = tempR;
    }
    
    // Overloading constructor:
    Particle(){
        x = random(width);
        y = random(height);
        r = (random(4, 20));
    }
    
    void display(){
        stroke(255);
        noFill();
        ellipse(x, y, r*2, r*2);
    }
    
    boolean overlaps(Particle p){
        
        float distance = dist(this.x, this.y, p.x, p.y);
        
        if(distance<this.r+p.r){
            return true;
        }
        
        return false;    
    }
}
