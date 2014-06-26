PShape square1;
PShape square2;

void setup(){
  size(400,400);
  background(255,255,255);
  smooth();
  
  //Make the background 
  square = createShape(RECT, width/2, height/2, 200, 200);
  square.setFill(color(0, 0, 0, 0));
  square.setStroke(5);
}
