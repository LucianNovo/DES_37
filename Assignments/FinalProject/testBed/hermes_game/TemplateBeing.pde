/**
 * An immobile flashing square --- DANGEROUS 
 */
class GlitchySquare extends Being {
  static final int WIDTH = 50;
  static final int HEIGHT = 50;
  static final int SHAKE_STEP = 50;
  boolean _stroke;
  color _c;
  boolean _up;
  boolean _down;
  boolean _left;
  boolean _right;

  GlitchySquare(int x, int y) {
    super(new HRectangle(x, y, WIDTH, HEIGHT));
    //        pickColor();

    _up = false;
    _down = false;
    _left = false;
    _right = false;
  }

  public void setColor(color c) {
    _c = c;
  }
  
  public void receive(KeyMessage m) {
    int code = m.getKeyCode();
    if(m.isPressed()){
      if(code == POCodes.Key.UP){
        _up = true;
      }
      else if(code == POCodes.Key.RIGHT){
        _right = true;
      }
      else if(code == POCodes.Key.LEFT){
        _left = true;
      }
      else if(code == POCodes.Key.DOWN){
        _down = true;
      }
    }
    else {
      if (code == POCodes.Key.UP) {
        _up = false;
      } 
      else if (code == POCodes.Key.RIGHT) {
        _right = false;
      } 
      else if (code == POCodes.Key.DOWN) {
        _down = false;
      } 
      else if (code == POCodes.Key.LEFT) {
        _left = false;
      }
    }
  }
  
  public void receive(MouseMessage m) {
    if (m.getAction() == POCodes.Click.PRESSED) {
      currentWorld.delete(this);
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

  public void draw() {
    fill(_c);
    if (_stroke) {
      strokeWeight(5);
      stroke(255);
    } else {
      noStroke();
    }
    _shape.draw();
  }

  private void pickColor() {
    _c = color(int(random(256)), int(random(256)), int(random(256)));
  }

  public void drawStroke() {
    _stroke = true;
  }
}

