 //Rectangle Composition - Digitalism Album Cover- Ex2 Q2
 //Lucian Novosel - 2014
 //Open sourcerer on the internet of things
 // WWW: luciannovosel.com GH: github.com/luciannovo

void setup()  {
  size(300, 300, P3D);
  noStroke();
  fill(255);
}

void draw(){
  ortho(0, width, 0, height);  
  background(0);
  lights();
  
  //left cube
  pushMatrix();
    translate(2.3*width/6, 2.65*width/6, 0);
    rotateX(-PI/6); 
    rotateY(PI/4);
    box(width/6);
  popMatrix(); 
  //right cube
  pushMatrix();
    translate(3.7*width/6, 2.65*width/6, 0);
    rotateX(-PI/6); 
    rotateY(PI/4);
    box(width/6);
  popMatrix(); 
  //center cube
  pushMatrix();
    translate(3*width/6, 3*width/6,2*width/6);
    rotateX(-PI/6); 
    rotateY(PI/4);
    box(width/6);
  popMatrix(); 

}
