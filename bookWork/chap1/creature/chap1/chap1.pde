 //Creature Exercise
 //Lucian Novosel - 2014
 //Open sourcerer on the internet of things
 // WWW: luciannovosel.com GH: github.com/luciannovo

void setup(){
  size(300,300);
  background(255);
  smooth();
  
  noFill();
  scale(3);
  
  ellipse(33,33, 10,10); 
  ellipse(66,33, 10,10); 
  
  pushMatrix();
  translate(50,50);
  rotate(radians(45));
  rect(0,0,5,5);
  ellipse(0,0,70,70);
  popMatrix();
  
}
