// create 3 rectangles// without loopsize(200, 200);int rects = 3;int w = width/rects;int h = w;int x = 0;int y = height/2-h/2;rect(x, y, w, h);rect(x+w, y, w, h);rect(x+w*2, y, w, h);