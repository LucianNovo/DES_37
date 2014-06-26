 //Directional Arrows
 //Lucian Novosel - 2014
 //Open sourcerer on the internet of things
 // WWW: luciannovosel.com GH: github.com/luciannovo

void setup(){
  size(300,300);
  background(255); 
  
  rectMode(CENTER);
  fill(0,40,244,100);
  noStroke();
  
  scale(3);
  beginShape();
  vertex(50, 10);
  vertex(90, 30);
  vertex(90, 70);
  vertex(50,50); 
  vertex(10, 70);
  vertex(10, 30);
  endShape(CLOSE);
  
  scale(1);
  beginShape();
  vertex(50, 25);
  vertex(75, 40);
  vertex(75, 90);
  vertex(50, 75); 
  vertex(25, 90);
  vertex(25, 40);
  endShape(CLOSE);
  
  //Create the image
  String imgPath = ("../../generatedImagesEX1/" + frame.getTitle());
  saveFrame(imgPath);  
}
