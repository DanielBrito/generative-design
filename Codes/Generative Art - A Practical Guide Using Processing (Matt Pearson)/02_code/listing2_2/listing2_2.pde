// setup and background
size(500, 300);		
smooth();
background(230, 230, 230);

// draw two crossed lines
stroke(130, 0, 0); 	
strokeWeight(1);  
line(width/2 - 70, height/2 - 70, width/2 + 70, height/2 + 70);
line(width/2 + 70, height/2 - 70, width/2 - 70, height/2 + 70);

// draw a filled circle too 
stroke(0, 125); 		
strokeWeight(6);  
fill(255, 150);      
ellipse(width/2, height/2, 50, 50);

