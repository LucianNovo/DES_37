 //Rectangle Variance(Increasing) -  
 //Lucian Novosel - 2014
 //Open sourcerer on the internet of things
 // WWW: luciannovosel.com GH: github.com/luciannovo

float xPosIncrement;
float rectPosX  = 0;
float rectCount = 6;
float rectDimIncrement;
float rectDim   = 100;

void setup() {
  size(300,300,P3D);
  rectMode(CENTER);
  noFill();
  stroke(255);
 
  xPosIncrement    = width/(rectCount*2.5);
  rectDimIncrement = rectDim/(rectCount+2);
  
  for(float i=0, rectPosX=xPosIncrement; i<rectCount;i = i + 1){
    pushMatrix();
    translate(height/2,rectPosX,0);
    rotateX(PI/4);
    rect(0, rectPosX, rectDim, rectDim);
    popMatrix();
    rectDim  = rectDim  - rectDimIncrement;
    rectPosX = rectPosX + xPosIncrement;
  }
 
  String imgPath = ("../../generatedImagesEX2/" + frame.getTitle() + ".png");
  saveFrame(imgPath);
 
}
