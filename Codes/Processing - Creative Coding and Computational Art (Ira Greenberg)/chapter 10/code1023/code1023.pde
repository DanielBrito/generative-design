// Color Staticsize(400, 400);loadPixels();int px = pixels.length;color c;for (int i=0; i<px; i++){  c = color(random(255), random(255), random(255));  pixels[i] = c;}updatePixels();