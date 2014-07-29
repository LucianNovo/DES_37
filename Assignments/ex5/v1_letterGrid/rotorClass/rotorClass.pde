class rotor {
  int positionX;
  int positionY;
  String abc   = "zyxuwvutsrqponmlkjihgfedcbabcdefghijklmnopqrstuvwuxyz";
  int[] index  = {-25,-24,-23,-22,-21,-20,-19,-18,-17,-16,-15,-14,-13,-12,-11,-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25};

  boolean rotorDown = (boolean(int(random(0, 2))));

  int opacity = 255;
  int thecolor = 255;

  float locationUpdate = - 12 * characterSize; 

  int currentIndex = 0;
  char currentCharacter = 'A';
  // int destinationIndex = 0;
  int destinationCharacter;
  
  int indexOffset = 0;

  rotor(int inpPositionX, int inpPositionY) { //main program will be responsible for creating the absolute coordinates
    positionX = inpPositionX; 
    positionY = inpPositionY;
    
    rectMode(CENTER);
    textAlign(CENTER);
    
    for(int j=0; j<height/characterSize; j++){
      fill(0);
      rect(positionX,j*characterSize + 3*characterSize/4,36,36);
      fill(255);
    }  
    writeWord(positionX-.5,locationUpdate, true);
  }
  
  void update(){
    if(currentIndex != indexOffset){
       println("Mismatch");
       if(currentIndex<indexOffset){
         writeWord(characterSize/2 + 48.0, 3*characterSize/4 + locationUpdate, true);
         currentIndex = currentIndex + 1;
         indexOffset  = indexOffset + 1;
         locationUpdate = locationUpdate + 48;
       }
       else if(currentIndex>indexOffset){
         writeWord(characterSize/2 + 48.0, 3*characterSize/4 + locationUpdate, true);
         currentIndex = currentIndex - 1;
         indexOffset  = indexOffset - 1;
         locationUpdate = locationUpdate - 48;
       }
    }
  }

  void setDestination(int destIndex){
    indexOffset = destIndex;
  }

  void writeCharacter(char character,float startX, float startY){
    textAlign(CENTER);
    rectMode(CENTER);
    fill(0);
    rect(startX,startY,characterSize,characterSize);
    fill(255);
    text(character,startX,startY);
  }
  
  void writeWord(float startX, float startY, boolean _down){ 
    float characterIterator = startY;
    for (char letter : abc.toCharArray())
    {
      writeCharacter(letter,startX,characterIterator);
      if(_down == true){
        characterIterator = characterIterator + characterSize;
      }
      else{
        startX = startX + characterSize;
      }
    }
  }
};
