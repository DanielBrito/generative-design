size(400, 400);//create a Pimage and load an external imagePImage img = loadImage("portrait.jpg");//PImage method get() works even without drawing the image to the screenprintln("PImage get() method = " + img.get(50, 50));//PImage pixels[] array may also be accessed without drawing the image to the screenprintln("PImage pixel array = " + img.pixels[50*width+50]);//draw the image to the screenimage(img, 0, 0);// display window get() function works without calling loadPixels();println("get() function = " + get(50, 50));loadPixels();// loadPixels() must be called prior to accessing display window pixels[] array directlyprintln("pixel array = " + pixels[50*width+50]);