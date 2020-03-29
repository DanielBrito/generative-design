// M_3_5_01.pde
// Mesh.pde
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
 * morphes between two different forms
 * 
 * MOUSE
 * position x          : morphing between the forms
 * 
 * KEYS
 * s                   : save png
 */


// imports
import processing.opengl.*;
import java.util.Calendar;

// mesh
MyOwnMesh myMesh;


void setup() {
  size(1000,1000,P3D);

  // setup drawing style 
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();

  // initialize mesh
  myMesh = new MyOwnMesh();
  myMesh.setUCount(100);
  myMesh.setVCount(100);
  myMesh.setColorRange(193, 193, 30, 30, 85, 85, 100);

}


void draw() {
  background(255);

  // setup lights
  colorMode(RGB, 255, 255, 255, 100);
  lightSpecular(255, 255, 255); 
  directionalLight(255, 255, 255, 1, 1, -1); 
  shininess(5.0); 

  // setup view
  translate(width*0.5, height*0.5);
  scale(90);
  rotateX(radians(-50)); 
  rotateY(radians(40)); 

  // recalculate points and draw mesh
  myMesh.setParam(1, float(mouseX)/width);
  myMesh.update();
  myMesh.draw();
}



class MyOwnMesh extends Mesh {
  PVector calculatePoints(float u, float v) {
    PVector p1 = SteinbachScrew(u, v);
    PVector p2 = Bow(u, v);
    
    float x = lerp(p1.x, p2.x, params[1]);
    float y = lerp(p1.y, p2.y, params[1]);
    float z = lerp(p1.z, p2.z, params[1]);

    return new PVector(x, y, z);
  }
}




void keyPressed(){
  if(key == 's' || key == 'S') saveFrame(timestamp()+".png");

}


String timestamp() {
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", Calendar.getInstance());
}




