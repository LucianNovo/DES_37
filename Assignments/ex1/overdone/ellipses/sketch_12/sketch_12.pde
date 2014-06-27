 //Ven Diagram
 //Lucian Novosel - 2014
 //Open sourcerer on the internet of things
 // WWW: luciannovosel.com GH: github.com/luciannovo
 
 //Kuler Scheme: //FC5960 FFB05A FEFF7E 64A4E2 64A4E2

void setup(){
  size(300,300);
  background(255);
  noStroke();
  
  fill(#FC5960,150); 
  ellipse(3*width/8,4*height/8, width/2, height/2); 
  
  fill(#FFB05A,150);
  ellipse(5*width/8,4*height/8, width/2, height/2); 
  
  fill(#FEFF7E,150);
  ellipse(4*width/8,3*height/8, width/2, height/2); 
  
  fill(#64A4E2,150);
  ellipse(4*width/8,5*height/8, width/2, height/2); 
  
  String imgPath = ("../../generatedImagesEX1Overdone/" + frame.getTitle());
  saveFrame(imgPath);
}
