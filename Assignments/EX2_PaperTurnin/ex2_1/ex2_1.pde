 //5-line pattern with variable
 //Lucian Novosel - 2014
 //Open sourcerer on the internet of things
 // WWW: luciannovosel.com GH: github.com/luciannovo

int y;
int strokeThickness;
int strokeThicknessIncrement = 1;
int incrementHeight;
int lineCount = 10;


void setup(){
  size(300,300); 
  background(255);
  noFill();
  rectMode(CENTER);
   
  incrementHeight = int(height/(lineCount + 1));
  
  for(int i=0, y=incrementHeight, strokeThickness=1; i<lineCount;i++){
     //draw the line
       strokeWeight(strokeThickness); 
       //downwards segment
       line(width/3,y, 0, (y - (incrementHeight/2)));
       //upwards segment
       line(2*width/3,y, width, (y - (incrementHeight/2)));
       //middle segment
       line(width/3,y, 2*width/3,y);
     
     //update the line parameters
       strokeThickness = strokeThickness + strokeThicknessIncrement;
       y = y + incrementHeight;
  }
  
  String imgPath = ("../../generatedImagesEX2/" + frame.getTitle() + ".png");
  saveFrame(imgPath);
}
  
