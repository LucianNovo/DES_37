 //
 //Lucian Novosel - 2014
 //Open sourcerer on the internet of things
 // WWW: luciannovosel.com GH: github.com/luciannovo
// 92.5,42.5 50,0 7.5,42.5 21.2,42.5 21.2,100 78.8,100 78.8,42.5

void setup(){
  size(300,300);
  background(255);
  noStroke();
  fill(200);
  scale(3);
  beginShape();
     vertex(92.5,42.5);
     vertex(50,0); 
     vertex(7.5,42.5);
     vertex(21.2,42.5); 
     vertex(21.2,100);
     vertex(78.8,100);
     vertex(78.8,42.5); 
  endShape(CLOSE);
  
  pushMatrix();
     translate(2.5,50+11.5);
     fill(100,255);
     scale(.63);
     rotate(radians(-45));
       beginShape();
         vertex(85,42.5);
         vertex(42.5,0); 
         vertex(0,42.5);
         vertex(13.7,42.5); 
         vertex(13.7,100);
         vertex(71.3,100);
         vertex(71.3,42.5); 
      endShape(CLOSE);

     translate(-5,61.5);
     fill(50,255);
     scale(.63);
     rotate(radians(-45));
       beginShape();
         vertex(85,42.5);
         vertex(42.5,0); 
         vertex(0,42.5);
         vertex(13.7,42.5); 
         vertex(13.7,100);
         vertex(71.3,100);
         vertex(71.3,42.5); 
      endShape(CLOSE);   
      
     translate(-5,61.5);
     fill(50,255);
     scale(.63);
     rotate(radians(-45));
       beginShape();
         vertex(85,42.5);
         vertex(42.5,0); 
         vertex(0,42.5);
         vertex(13.7,42.5); 
         vertex(13.7,100);
         vertex(71.3,100);
         vertex(71.3,42.5); 
      endShape(CLOSE);   
      
  popMatrix();


  
  String imgPath = ("../../generatedImagesEX1Overdone/" + frame.getTitle());
  saveFrame(imgPath);
}
