 //3D text challenge
 //Lucian Novosel - 2014
 //Open sourcerer on the internet of things
 // WWW: luciannovosel.com GH: github.com/luciannovo

String s = "LKN";
PFont font;

void setup(){
  size(300,300);
  background(255);
  rectMode(CENTER);
  
  fill(50);
  font = loadFont("data/DINCondensed-Bold-140.vlw");
  textFont(font, 140);
  text(s,width/2,height/2,180, 150);
  

//  fill(50);
//  font = loadFont("data/DINCondensed-Bold-140.vlw");
//  textFont(font, 160);
//  text(s,width/2-5,height/2-5,180, 150);

  fill(255);
  font = loadFont("data/DINCondensed-Bold-140.vlw");
  textFont(font, 140);
  text(s,width/2-5,height/2-5,180, 150);
  
  String imgPath = ("../../generatedImagesEX1/" + frame.getTitle());
  saveFrame(imgPath);
}
