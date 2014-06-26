 //5-line pattern
 //Lucian Novosel - 2014
 //Open sourcerer on the internet of things
 // WWW: luciannovosel.com GH: github.com/luciannovo
     
 void setup(){
   size(300, 300);
   background(192, 64, 0);
   stroke(255);
   line(10, height/7, 10, height/2);
   line(10, height/2, 2 * height/7, 2 * height/7);
   line(10, height/2, height/2,height/2);
   line(10, height/2, 2 * height/7, 5 * height/7);
   line(10, height/2, 10, 6 * height/7);
   
   String imgPath = ("../../generatedImagesEX1/" + frame.getTitle());
   saveFrame(imgPath);
 }
