// add to Kite.java // dynamically change kite parameters public void setFeetCount(int val){     // reinitilize arrays    feetCount += val;    feet = new Point2D[feetCount];    feetDelta = new Vect2D[feetCount];    feetVel = new Vect2D[feetCount];    feetAccel = new Vect2D[feetCount];    springSpeed = new float[feetCount];      // reset values   float theta = 0;   float rad = 100;   for (int i=0; i<feet.length; i++){    feet[i] = new Point2D(dummy.x + cos(theta)*botRadius, dummy.y + sin(theta)*botRadius);    feetDelta[i] = new Vect2D(feet[i].x-dummy.x, feet[i].y-dummy.y);    feetVel[i] = new Vect2D(0, 0);    feetAccel[i] = new Vect2D(0, 0);    theta += TWO_PI/feet.length;    springSpeed[i] = random(springSpdMin, springSpdMax);   }  }