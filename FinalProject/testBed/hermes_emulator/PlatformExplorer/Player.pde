/**
 * Represents the player
 */
class Player extends MassedBeing {
  
  final static float PLAYER_WIDTH = 16;
  final static float PLAYER_HEIGHT = 36;
  final static float PLAYER_SPEED = 150;
  
  // constants used to indicate the direction the player is facing
  final static int FACING_LEFT = 1;
  final static int FACING_RIGHT = 2;
  
  int direction = FACING_RIGHT; // the direction the player is facing
  boolean jumped = false;       // whether the player can jump
  
  AnimatedSprite sprite;
  int animIndex;
  
  Player(float x, float y, int playerSkin) {
    super(new HRectangle(HermesMath.makeVector(x, y), PLAYER_WIDTH, PLAYER_HEIGHT), HermesMath.zeroVector(), 1.0f, 1.0f);
    
    // load the animated character walk cycle
    sprite = new AnimatedSprite();
    Animation anim;
    if(playerSkin == 1){ 
      anim = new Animation("Tiger_Cat-0", 1, 7, ".png", (int)(1000.0f / 24.0f));
    }
    else{
      anim = new Animation("Grizzo_Cat-0", 1, 7, ".png", (int)(1000.0f / 24.0f));
    }

    if

    animIndex = sprite.addAnimation(anim);
    sprite.setActiveAnimation(animIndex);
    sprite.pause();
  }
  
  void draw() {
    scale(0.8);
    
    imageMode(CENTER);
    // if the character is facing left, invert the image
    if(direction == FACING_LEFT) {
      scale(-1,1);
      translate(20, 0);
    }
    image(sprite.animate(), 0, 0); // draw the current animation frame
  }
  
  // when this is called the player can jump again
  void resetJump() {
    jumped = false;
  }
  
  // we use update() to apply gravity
  void update() {
    addForce(new PVector(0, -GRAVITY * getMass(), 0));
    if(abs(getVelocity().y) >= 5)
      sprite.pause();
  }
  
  public void receive(MouseMessage m) {
    if (m.getAction() == POCodes.Click.PRESSED) {
      //set the active character
      cam.swap();
      println("Swap Called");
    }
  }
  
  
  
  void receive(KeyMessage m) {
    int nKey = m.getKeyCode();
    if(m.isPressed()) { // the player's movement is controlled by w/a/s/d or the arrows
      if(nKey == POCodes.Key.D || nKey == POCodes.Key.RIGHT) {
        getVelocity().x = PLAYER_SPEED;
        direction = FACING_RIGHT;
      }
      if(nKey == POCodes.Key.A || nKey == POCodes.Key.LEFT) {
        getVelocity().x = -PLAYER_SPEED;
        direction = FACING_LEFT;
      }
      if((nKey == POCodes.Key.W || nKey == POCodes.Key.UP) && !jumped) {
        addImpulse(new PVector(0, -PLAYER_SPEED, 0));
        jumped = true;
      }
      if(nKey == POCodes.Key.S || nKey == POCodes.Key.DOWN) {
        getVelocity().y = 2*PLAYER_SPEED;
      }
      if(abs(getVelocity().y) <= 5) sprite.unpause();
    } else { // when a key is released, we stop the player
        if(nKey == POCodes.Key.D || nKey == POCodes.Key.A || nKey == POCodes.Key.LEFT || nKey == POCodes.Key.RIGHT) {
          getVelocity().x = 0;
          //end the animation on the first frame
          image(sprite.animate(), 1, 1);
          sprite.pause();
        }
    }
  } 
  
}
