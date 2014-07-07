//Ven Diagram - Ellipses
//Lucian Novosel - 2014
//Open sourcerer on the internet of things
// WWW: luciannovosel.com GH: github.com/luciannovo
 
//Kuler Scheme: //FC5960 FFB05A FEFF7E 64A4E2 64A4E2

float radius;
float centerX;
float centerY;

void setup(){
  size(300,300);
  background(255);
  noStroke();
  
  radius  = 
  centerX = width/2;
  centerY = height/2;
  
  fill(#FC5960,150); 
  ellipse(3*width/8,4*height/8, centerX, centerY); 
  
  fill(#FFB05A,150);
  ellipse(5*width/8,4*height/8, centerX, centerY); 
  
  fill(#FEFF7E,150);
  ellipse(4*width/8,3*height/8, centerX, centerY); 
  
  fill(#64A4E2,150);
  ellipse(4*width/8,5*height/8, centerX, centerY); 
  
  String imgPath = ("../../generatedImagesEX2/" + frame.getTitle() + ".png");
  saveFrame(imgPath);
}
