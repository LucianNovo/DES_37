 //Unique Selfportrait
 //Lucian Novosel - 2014
 //Open sourcerer on the internet of things
 // WWW: luciannovosel.com GH: github.com/luciannovo

PShape svg; 

void setup(){
  size(300,300); 
  background(255);
  smooth();
  svg = loadShape("../mockups/selfPortrait-01.svg");
  scale(3);
  shape(svg, 0,  0, 100, 100);

  String imgPath = ("../../generatedImagesEX1/" + frame.getTitle());
  saveFrame(imgPath);
}


