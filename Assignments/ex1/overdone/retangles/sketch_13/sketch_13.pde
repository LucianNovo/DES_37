 //Coinciding Squares
 //Lucian Novosel - 2014
 //Open sourcerer on the internet of things
 // WWW: luciannovosel.com GH: github.com/luciannovo
 

void setup(){
  size(300,300);
  background(255);
  noStroke();
  rectMode(CORNER);
  
  pushMatrix();
  translate(width/2,height/4);
  fill(70,100);
  rotate(radians(45));
  rect(0,0,width/10,height/10);
  rect(0,0,width/5,height/5); 
  rect(0,0,width/2.5,height/2.5);  
  popMatrix();

  pushMatrix();
  translate(width/2,height/9);
  fill(70,100);
  rotate(radians(45));
  rect(0,0,width/10,height/10);
  rect(0,0,width/5,height/5); 
  rect(0,0,width/2.5,height/2.5);  
  popMatrix(); 
  
  pushMatrix();
  translate(width/2,4 * height/10.2);
  fill(70,100);
  rotate(radians(45));
  rect(0,0,width/10,height/10);
  rect(0,0,width/5,height/5); 
  rect(0,0,width/2.5,height/2.5);  
  popMatrix();
  
  String imgPath = ("../../generatedImagesEX1Overdone/" + frame.getTitle());
  saveFrame(imgPath);
}
