//Ven Diagram - Moving Ellipses
//Lucian Novosel - 2014
//Open sourcerer on the internet of things
// WWW: luciannovosel.com GH: github.com/luciannovo

//Kuler Scheme: //FC5960 FFB05A FEFF7E 64A4E2 64A4E2

float divider = 1;
float ellipseWidth;
boolean grow = true; 

void setup() {
  size(300, 300, P3D);
  rectMode(CENTER);
  background(0);
  noFill();
  stroke(255);

  frameRate(40);

  String imgPath = ("../../generatedImagesEX2/" + frame.getTitle() + ".png");
  saveFrame(imgPath);
}

void draw(){
  background(0);
  pushMatrix();
  translate(width/2,height/2,0);
  rotateX(radians(80));
  ellipseWidth = divider/width;
  
  if(ellipseWidth >= width){
    grow = false;
  }
  if(ellipseWidth <= 0){
    grow = true;
  }
  
  ellipse(0,0,ellipseWidth, ellipseWidth);
  popMatrix();
  if(grow){
    divider = divider + 1000;
  }
  else{
    divider = divider - 1000;
  }
}
