// lerpColor()size(400, 400);noStroke();color c1 = color(255, 255, 0);color c2 = color(150, 0, 150); // change these values to alter gradientfloat stepsH = 16;float stepsW = 16;/* ratio to remap any number of  cells into 0 - 1.0 range for  lerpColor interpolation argument */float remapFactor = 100.0/(stepsH*stepsW);float cellW = width/stepsW;float cellH = height/stepsH;int cellCounter = 0;for (int i=0; i<stepsH; i++){  for (int j=0; j<stepsW; j++){    fill(lerpColor(c1, c2, (remapFactor*cellCounter)*.01));    rect(j*cellW, i*cellH, cellW, cellH);    cellCounter++;  }}