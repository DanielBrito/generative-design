size(300,300);
smooth();
background(255);
float xstart = random(10);
float xnoise = xstart;
float ynoise = random(10);
  
for (int y = 0; y <= height; y+=1) {	
	ynoise += 0.01;
	xnoise = xstart;     			
for (int x = 0; x <= width; x+=1) {	
  		xnoise += 0.01;
		int alph = int(noise(xnoise, ynoise) * 255);	
   		stroke(0, alph);
    		line(x,y, x+1, y+1);
	}
}

