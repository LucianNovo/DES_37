class PlatformCamera extends HCamera {
  
  PlatformCamera(Player firstPlayer) {
    super();
  }
  
  void draw() {
    if(playerID == 1){
      setPosition(player1.getPosition().x - WINDOW_WIDTH / 2,
                  player1.getPosition().y - WINDOW_HEIGHT / 2);
    }
    if(playerID == 2){
      setPosition(player2.getPosition().x - WINDOW_WIDTH / 2,
                  player2.getPosition().y - WINDOW_HEIGHT / 2);
    }
    super.draw();
  }
  
  void swap(int inpPlayerID){
    playerID = inpPlayerID;
    println("Swap function called");
  }
}
