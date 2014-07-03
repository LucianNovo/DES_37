PImage img;
int pointillize = 16;
int x;
int y;
int resolution = 50;
int loc = 0;

void setup() {
  size(500,505);
  img = loadImage("mbdtf.jpg");
  background(0);
  smooth();
  x = 0;
  y = 0;
}

void draw() {
  // Pick a random 
//  x = x + img.width/resolution;
//  y = y + img.width/resolution;
//  int x = int(random(img.width));
//  int y = int(random(img.height));
  
  int x   = img.width/50;
  int loc = loc + img.width/50;
  
  // Look up the RGB color in the source image
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  noStroke();
  
  int y   = loc/50;
  
  
  // Draw an ellipse at that location with that color
  fill(r,g,b,100);
  rect(x,y,10,10);
}
