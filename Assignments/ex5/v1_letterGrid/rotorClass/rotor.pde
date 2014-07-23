
int characterSize = 24; //based on width
int spacing; //based on width
float locationUpdate = 48.0; 
PFont f;     // STEP 2 Declare PFont variable
rotor[] dials;


void setup(){
  size(1024,600);
  f = createFont("ONRAMP",36,true); // STEP 3 Create Font
  spacing = width/characterSize;
  frameRate(6); 
  
  dials
  
  for(int i=0; i<width/characterSize; i++){
    //make a rotation
    dials[i] = new rotor(i*characterSize + characterSize/2,0);
  }
      
}

void draw(){
}
