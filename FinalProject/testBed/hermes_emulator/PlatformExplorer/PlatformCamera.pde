class PlatformCamera extends HCamera {
  
  int classPlayerID;
  PlatformCamera(int inpPlayerID) {
     super();
    classPlayerID = inpPlayerID;
  }
  
  void draw() {
    if(classPlayerID == 1){
      setPosition(player1.getPosition().x - WINDOW_WIDTH / 2,
                  player1.getPosition().y - WINDOW_HEIGHT / 2);
    }
    if(classPlayerID == 2){
      setPosition(player2.getPosition().x - WINDOW_WIDTH / 2,
                  player2.getPosition().y - WINDOW_HEIGHT / 2);
    }
    super.draw();
  }
  
  void swap(){
    if(classPlayerID == 1){
      classPlayerID = 2;
    }
    else{
      classPlayerID = 1;
    }
    println("Swap function called");
  }
}
