class Player extends MassedBeing {
  static final int rad = 50;
  static final int SHAKE_STEP = 15;
  final static float PLAYER_SPEED = 150;
  // constants used to indicate the direction the player is facing
  int direction = FACING_RIGHT; // the direction the player is facing
  final static int FACING_LEFT = 1;
  final static int FACING_RIGHT = 2;
  boolean jumped = false;       // whether the player can jump

  
  boolean _stroke;
  color _c;
  boolean _up;
  boolean _down;
  boolean _left;
  boolean _right;

  Player() { 
    
    super(new HCircle(HermesMath.makeVector(WINDOW_WIDTH/2,WINDOW_HEIGHT/2), rad), HermesMath.zeroVector(), 1.0f, 1.0f);
    pickColor();
    _up = false;
    _down = false;
    _left = false;
    _right = false;
  }

  private void pickColor() {
    _c = color(int(random(256)), int(random(256)), int(random(256)));
  }

  public void draw() {
    fill(_c);
    noStroke();
    _shape.draw();
  }

//  public void receive(KeyMessage m) {
//    int code = m.getKeyCode();
//    if (m.isPressed()) {
//      if (code == POCodes.Key.UP) {
//        _up = true;
//      } else if (code == POCodes.Key.RIGHT) {
//        _right = true;
//      } else if (code == POCodes.Key.LEFT) {
//        _left = true;
//      } else if (code == POCodes.Key.DOWN) {
//        _down = true;
//      }
//    } else {
//      if (code == POCodes.Key.UP) {
//        _up = false;
//      } else if (code == POCodes.Key.RIGHT) {
//        _right = false;
//      } else if (code == POCodes.Key.DOWN) {
//        _down = false;
//      } else if (code == POCodes.Key.LEFT) {
//        _left = false;
//      }
//    }
//  }

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
//      if(abs(getVelocity().y) <= 5) sprite.unpause();
//    } else { // when a key is released, we stop the player
//        if(nKey == POCodes.Key.D || nKey == POCodes.Key.A || nKey == POCodes.Key.LEFT || nKey == POCodes.Key.RIGHT) {
//          getVelocity().x = 0;
//          sprite.pause();
//        }
    }
  } 

  public void update() {
    addForce(new PVector(0,-GRAVITY * getMass(), 0));
    _stroke = false;
  }
}

