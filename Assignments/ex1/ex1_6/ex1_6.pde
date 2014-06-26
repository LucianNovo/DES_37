 //Intersecting Ellipses
 //Lucian Novosel - 2014
 //Open sourcerer on the internet of things
 // WWW: luciannovosel.com GH: github.com/luciannovo

 void setup(){
    size(300, 300);
    background(255);
    smooth();

    noFill();
    strokeWeight(5);

    for (int i = 0; i< 20; i = i+1){
      stroke(255,255,0, 140);
      ellipse(height/2, 1 * width/5, i * 20, i * 20);
      stroke(0,255,255, 140);
      ellipse( height/2, 4 * width/5, i * 20, i * 20);
    }
    
      //Create the image
      String imgPath = ("../../generatedImagesEX1/" + frame.getTitle());
      saveFrame(imgPath);
 }
