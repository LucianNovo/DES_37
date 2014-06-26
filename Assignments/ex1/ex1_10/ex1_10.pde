 //Directional Arrows
 //Lucian Novosel - 2014
 //Open sourcerer on the internet of things
 // WWW: luciannovosel.com GH: github.com/luciannovo

void setup(){
  size(300,300);
  background(255);
  smooth();
  
  //
  scale(3); 
  noStroke();
  fill(#0BCEDE,100);
  beginShape();
    vertex(3.9,76.4 );
    vertex(22.4,95 );
    vertex(59,58.4 );
    vertex(71.6,70.9 );
    vertex(71.6,27.3 );
    vertex(28,27.3 );
    vertex(40.5,39.9);
  endShape(CLOSE);
  
  fill(#FF5744,100);
  beginShape();
    vertex(95.3,21.8 );
    vertex(76.8,3.3 );
    vertex(40.2,39.8 );
    vertex(27.6,27.3 );
    vertex(27.6,70.9 );
    vertex(71.2,70.9 );
    vertex(58.7,58.4 );
  endShape(CLOSE);
  
  String imgPath = ("../../generatedImagesEX1/" + frame.getTitle());
  saveFrame(imgPath);
}
