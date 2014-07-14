

float minInc   = 1.01;
float maxInc   = 1.05;
float xOrigin;
float yOrigin;
Level[] rings;

void setup(){
  //global variable assignment
  smooth();
  size(500,500);
  xOrigin = width/3;
  yOrigin = width/2;
 
  //define the rings
  rings = new Level[50];
  for (int i = 0; i < rings.length; i++ ){
    rings[i] = new Level();
  }
  
}

void draw(){
  background(255);
  for (int i = 0; i < rings.length; i++ ) {
    rings[i].expandPlz();
    rings[i].display();
    rings[i].check();
  }
}
  
void delay(int delay)
{
  int time = millis();
  while(millis() - time <= delay);
}
