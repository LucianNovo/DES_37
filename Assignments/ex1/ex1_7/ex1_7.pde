 //Conflicting Triangles
 //Lucian Novosel - 2014
 //Open sourcerer on the internet of things
 // WWW: luciannovosel.com GH: github.com/luciannovo

void setup(){
  size(300,300);
  background(230);
  smooth(); 
  
  noStroke();
  fill(0,0,0,90);
  triangle(0,0,0,300,300,300);
  fill(0,0,0,180);
  triangle(0,300,300,300,300,0);

  //Create the image
  String imgPath = ("../../generatedImagesEX1/" + frame.getTitle());
  saveFrame(imgPath);
}
