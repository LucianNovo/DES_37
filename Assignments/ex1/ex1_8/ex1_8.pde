 //2 triangles that communicate conflict
 //Lucian Novosel - 2014
 //Open sourcerer on the internet of things
 // WWW: luciannovosel.com GH: github.com/luciannovo

void setup(){
  size(300,300);
  background(255);
  smooth(); 
  
  strokeWeight(2);
  stroke(0,0,0,200);
  strokeCap(ROUND);
  noStroke();
//  noFill();
  scale(3);
  fill(0,0,100,80);
  triangle(10,10,50,45,90,30);
  fill(0,0,100,80);
  triangle(90,10,50,45,10,30);
}
