 //
 //Lucian Novosel - 2014
 //Open sourcerer on the internet of things
 // WWW: luciannovosel.com GH: github.com/luciannovo
 

void setup(){
  size(300,300);
  background(255);
  noStroke();
  
  String imgPath = ("../../generatedImagesEX1Overdone/" + frame.getTitle());
  saveFrame(imgPath);
}
