   //Balanced Rectangles
   //Lucian Novosel - 2014
   //Open sourcerer on the internet of things
   // WWW: luciannovosel.com GH: github.com/luciannovo
    
  void setup() {
    size(300, 300);
    background(255, 255, 255);
    smooth();
    
    //make background square with thick black outline
    rectMode(CENTER);
    stroke(0,0,0);
    fill(0,0);
    strokeWeight(5);
    
    pushMatrix();
    translate(width/2,height/2);
    rotate(radians(45));
    rect(0,0, 200, 200);
    popMatrix();
    
    //make frontmost white square
    rectMode(CENTER);
    stroke(0,0,0,0);
    fill(255);
    strokeWeight(5);
    
    pushMatrix();
    translate(width/2,height/2);
    rect(0,0, 200, 200);
    popMatrix();

    //Create the image
    String imgPath = ("../../generatedImagesEX1/" + frame.getTitle());
    saveFrame(imgPath);
  }
