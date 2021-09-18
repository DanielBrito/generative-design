// P_2_2_3_02.pde
// 
// Generative Gestaltung, ISBN: 978-3-87439-759-9
// First Edition, Hermann Schmidt, Mainz, 2009
// Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
// Copyright 2009 Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
//
// http://www.generative-gestaltung.de
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/**
 * form mophing process by connected random agents
 * two forms: circle and line
 * 
 * MOUSE
 * click               : start a new circe
 * position x/y        : direction and speed of floating
 * 
 * KEYS
 * 1-2                 : fill styles
 * 3-4                 : form styles circle/line
 * arrow up/down       : step size +/-
 * f                   : freeze. loop on/off
 * Delete/Backspace    : clear display
 * s                   : save png
 * r                   : start pdf recording
 * e                   : stop pdf recording
 */

import processing.pdf.*;
import java.util.Calendar;

boolean recordPDF = false;

int formResolution = 15;
int stepSize = 2;
float distortionFactor = 1;
float initRadius = 150;
float centerX, centerY;
float[] x = new float[formResolution];
float[] y = new float[formResolution];

boolean filled = false;
boolean freeze = false;
int mode = 0;


void setup(){
  // use fullscreen size 
  size(displayWidth, displayHeight);
  smooth();

  // init form
  centerX = width/2; 
  centerY = height/2;
  float angle = radians(360/float(formResolution));
  for (int i=0; i<formResolution; i++){
    x[i] = cos(angle*i) * initRadius;
    y[i] = sin(angle*i) * initRadius;  
  }

  stroke(0, 50);
  background(255);
}


void draw(){
  // floating towards mouse position
  if (mouseX != 0 || mouseY != 0) {
    centerX += (mouseX-centerX) * 0.01;
    centerY += (mouseY-centerY) * 0.01;
  }

  // calculate new points
  for (int i=0; i<formResolution; i++){
    x[i] += random(-stepSize,stepSize);
    y[i] += random(-stepSize,stepSize);
    // ellipse(x[i], y[i], 5, 5);
  }

  strokeWeight(0.75);
  if (filled) fill(random(255));
  else noFill();

  if (mode == 0) {
    beginShape();
    // start controlpoint
    curveVertex(x[formResolution-1]+centerX, y[formResolution-1]+centerY);

    // only these points are drawn
    for (int i=0; i<formResolution; i++){
      curveVertex(x[i]+centerX, y[i]+centerY);
    }
    curveVertex(x[0]+centerX, y[0]+centerY);

    // end controlpoint
    curveVertex(x[1]+centerX, y[1]+centerY);
    endShape();
  }

  if (mode == 1) {
    beginShape();
    // start controlpoint
    curveVertex(x[0]+centerX, y[0]+centerY);

    // only these points are drawn
    for (int i=0; i<formResolution; i++){
      curveVertex(x[i]+centerX, y[i]+centerY);
    }

    // end controlpoint
    curveVertex(x[formResolution-1]+centerX, y[formResolution-1]+centerY);
    endShape();
  }

}


void mousePressed() {
  // init forms on mouse position
  centerX = mouseX; 
  centerY = mouseY;

  // circle
  if (mode == 0) {
    centerX = mouseX;
    centerY = mouseY;
    float angle = radians(360/float(formResolution));
    float radius = initRadius * random(0.5,1.0);
    for (int i=0; i<formResolution; i++){
      x[i] = cos(angle*i) * radius;
      y[i] = sin(angle*i) * radius;
    }
  } 

  // line
  if (mode == 1) {
    centerX = mouseX;
    centerY = mouseY;
    float radius = initRadius * random(0.5,5.0);
    float angle = random(PI);
    radius = initRadius*4;
    angle = 0;
    
    float x1 = cos(angle) * radius;
    float y1 = sin(angle) * radius;
    float x2 = cos(angle-PI) * radius;
    float y2 = sin(angle-PI) * radius;
    for(int i=0; i<formResolution; i++) {
      x[i] = lerp(x1, x2, i/(float)formResolution);
      y[i] = lerp(y1, y2, i/(float)formResolution);
    }
  }
}


void keyPressed() {
  if (keyCode == UP) stepSize++;
  if (keyCode == DOWN) stepSize--;
  stepSize = max(stepSize, 1);
  println("stepSize: " + stepSize);
}

void keyReleased() {
  if (key == 's' || key == 'S') saveFrame(timestamp()+"_##.png");
  if (key == DELETE || key == BACKSPACE) background(255);

  if (key == '1') filled = false;
  if (key == '2') filled = true;
  if (key == '3') mode = 0;
  if (key == '4') mode = 1;

  // ------ pdf export ------
  // press 'r' to start pdf recording and 'e' to stop it
  // ONLY by pressing 'e' the pdf is saved to disk!
  if (key =='r' || key =='R') {
    if (recordPDF == false) {
      beginRecord(PDF, timestamp()+".pdf");
      println("recording started");
      recordPDF = true;
      stroke(0, 50);
    }
  } 
  else if (key == 'e' || key =='E') {
    if (recordPDF) {
      println("recording stopped");
      endRecord();
      recordPDF = false;
      background(255); 
    }
  } 

  // switch draw loop on/off
  if (key == 'f' || key == 'F') freeze = !freeze;
  if (freeze == true) noLoop();
  else loop();
}


// timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}


