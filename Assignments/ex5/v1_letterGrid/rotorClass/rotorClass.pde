class rotor {
  int positionX;
  int positionY;
  String abc   = "abcdefghijklmnopqrstuvwuxyz";
  int[] index  = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26};

  int destinationIndex;
  boolean down = (boolean(int(random(0, 2))));

  int opacity = 255;
  int thecolor = 255;

  int currentIndex;
  char currentCharacter;

  rotor(int inpPositionX, int inpPositionY) { //main program will be responsible for creating the absolute coordinates
    positionX = inpPositionX; 
    positionY = inpPositionY;
  }

  void goToChar(char character) {
    //map up or map down
    destinationIndex = int(map(float(character), float('A'), float('B'), 0.0, 26.0)); 
    println("the destination index is" + destinationIndex);
    println("The desintation character is" + destinationIndex);
    spin();
  }
  void goToNum(int inpNum) {
    spin();
  }
  void spin() {
  }
}

