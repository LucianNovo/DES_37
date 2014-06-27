 //Flannel Squares
 //Lucian Novosel - 2014
 //Open sourcerer on the internet of things
 // WWW: luciannovosel.com GH: github.com/luciannovo
 

void setup(){
  size(300,300);
  background(255);
  noStroke();
  
  pushMatrix();
  translate(width/2,height/4);
  fill(70,40);
  rotate(radians(45));
  
  rect(0,0,width/10,height/10);
  rect(0,0,width/10,height/5);
  rect(0,0,width/5,height/10);
  
  rect(0,0,width/5,height/2.5); 
  rect(0,0,width/2.5,height/5);
  rect(0,0,width/2.5,height/2.5);

  rect(0,0,width/1.25,height/2.5); 
  rect(0,0,width/2.5,height/1.25);
  rect(0,0,width/1.25,height/1.25);

  rect(0,0,width/1.25,height/.75); 
  rect(0,0,width/.75,height/1.25);
  rect(0,0,width/.75,height/.75);

  popMatrix();
  
  String imgPath = ("../../generatedImagesEX1Overdone/" + frame.getTitle());
  saveFrame(imgPath);
}
