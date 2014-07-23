
int characterSize = 24; //based on width
int spacing; //based on width
float locationUpdate = 48.0; 
String test = "Fellows";
String abc   = "abcdefghijklmnopqrstuvwuxyz";
int[]    index = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26};
char[] characters = new char[36];
PFont f;     // STEP 2 Declare PFont variable

  
void setup() {
  size(1024,600);
  f = createFont("ONRAMP",36,true); // STEP 3 Create Font
  spacing = width/characterSize;
  frameRate(6); 
}

void draw() {
  
  textAlign(CENTER);
  rectMode(CENTER);
  background(255);
  textFont(f,36);                 // STEP 4 Specify font to be used
  fill(0);                        // STEP 5 Specify font color 
  
  for(int i=0; i<width/characterSize; i++){
    for(int j=0; j<height/characterSize; j++){
      fill(0);
      rect(i*characterSize + characterSize/2,j*characterSize + characterSize/2,36,36);
      fill(255);
//      text("0",i*characterSize + characterSize/2,j*characterSize + characterSize/2);  // STEP 6 Display Text
    }
  }

  writeWord(characterSize/2 + 48.0, 48.0 + characterSize/2 + locationUpdate, true);
  locationUpdate = locationUpdate + characterSize;
}

void rotatColumn(){
   for( 
}

void writeCharacter(char character,float startX, float startY){
  textAlign(CENTER);
  rectMode(CENTER);
  fill(0);
  rect(startX,startY-characterSize/2,characterSize,characterSize);
  fill(255);
  text(character,startX,startY);
}

void writeWord(float startX, float startY, boolean _down){

  int iterator = characterSize;
  for (char letter : abc.toCharArray())
  {
    writeCharacter(letter,startX,startY);
    if(_down == true){
      startY = startY + characterSize;
    }
    else{
      startX = startX + characterSize;
    }
  }
}
