// title: fun with variables   stage 2// declare some global variablesint xpos;int ypos;int gradientWidth, gradientHeight;// set the sketch window size and backgroundsize(200,200);background(0);// define variable values// radial width/heightgradientWidth = gradientHeight = width;//radial center ptxpos = width/2;ypos = height/2;//create ellipse//set fill color and render ellipsefill(255);ellipse(xpos, ypos, gradientWidth,  gradientHeight);