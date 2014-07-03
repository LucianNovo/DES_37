
PImage img;
int increments = 50;
int increment;
int first_sample_y;
int first_sample_x;
int loc = 0;

void setup(){
  size(500,505);
  img = loadImage("mbdtf.jpg");
  background(0);
  smooth();
  increment = int(img.width/increments);
  first_sample_y = int(increment/2);
  first_sample_x = int(increment/2);
}

void draw(){
  loc = loc + increment;
  
  loadPixels();
    float r = red(img.pixels[loc]);
    float g = green(img.pixels[loc]);
    float b = blue(img.pixels[loc]);
  noStroke();
  
  // Draw an ellipse at that location with that color
  x = loc % increments;
  y = loc % increments;
  fill(r,g,b,100);
  rect(x,y,10,10);
}
   
  
  
  
