class Player extends Being {
  static final int rad = 50;
  static final int SHAKE_STEP = 15;
  boolean _stroke;
  color _c;
  boolean _up;
  boolean _down;
  boolean _left;
  boolean _right;

  Player() { 
    super(new HCircle(new PVector(WINDOW_WIDTH/2,WINDOW_HEIGHT/2), rad));
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

  public void receive(KeyMessage m) {
    int code = m.getKeyCode();
    if (m.isPressed()) {
      if (code == POCodes.Key.UP) {
        _up = true;
      } else if (code == POCodes.Key.RIGHT) {
        _right = true;
      } else if (code == POCodes.Key.LEFT) {
        _left = true;
      } else if (code == POCodes.Key.DOWN) {
        _down = true;
      }
    } else {
      if (code == POCodes.Key.UP) {
        _up = false;
      } else if (code == POCodes.Key.RIGHT) {
        _right = false;
      } else if (code == POCodes.Key.DOWN) {
        _down = false;
      } else if (code == POCodes.Key.LEFT) {
        _left = false;
      }
    }
  }

  public void update() {
    if (_up) {
      _position.y -= SHAKE_STEP;
    } 
    if (_right) {
      _position.x += SHAKE_STEP;
    } 
    if (_down) {
      _position.y += SHAKE_STEP;
    } 
    if (_left) {
      _position.x -= SHAKE_STEP;
    }
    _stroke = false;
  }
}

