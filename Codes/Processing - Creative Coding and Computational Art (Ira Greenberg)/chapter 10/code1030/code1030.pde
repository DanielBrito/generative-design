//Red Saturationsize(800, 400); PImage img = loadImage("hong_kong.jpg");image(img, 0, 0);image(img, width/2, 0);int threshold = 125;loadPixels();for(int j=0; j<height; j++){  for(int i=(width/2+j*width); i<width+j*width; i++){    if (red(pixels[i])>threshold){      pixels[i] = color(255, green(pixels[i]), blue(pixels[i]));    }  }}updatePixels();