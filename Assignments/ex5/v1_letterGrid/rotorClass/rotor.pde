
int characterSize = 24; //based on width
int spacing; //based on width
PFont f;     // STEP 2 Declare PFont variable
rotor[] dials;


void setup(){
  size(1024,600);
  textAlign(CENTER);
  rectMode(CENTER);
  
  //font things
  f = createFont("ONRAMP",36,true); // STEP 3 Create Font
  textFont(f,36);                 // STEP 4 Specify font to be used

  spacing = width/characterSize;
  frameRate(4); 
  
  dials = new rotor[int(width/characterSize)];
  
  for(int i=0; i<width/characterSize; i++){
    //make a rotor
    dials[i] = new rotor(i*characterSize + characterSize/2,0);
  }

  String abc = "THISSHIT";
  int indexer = 0;
  for (char letter : abc.toCharArray())
  {
    int destIndex = int(map(float(letter), float('A'), float('Z'), 0.0, 26.0)); 
    println(destIndex);
    dials[indexer].indexOffset = destIndex;
    dials[indexer].setDestination(destIndex);
    indexer = indexer + 1;
  }
}

void draw(){ 
  for(int i=0; i<10; i++){
     println(dials[i].indexOffset);    
     dials[i].update();
  }
  
}




