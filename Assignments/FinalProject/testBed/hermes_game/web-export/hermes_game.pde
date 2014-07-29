/**
 * A template to get you started
 * Define your beings, groups, interactors and worlds in separate tabs
 * Put the pieces together in this top-level file!
 */

import hermes.*;
import hermes.hshape.*;
import hermes.animation.*;
import hermes.physics.*;
import hermes.postoffice.*;

///////////////////////////////////////////////////
// CONSTANTS
///////////////////////////////////////////////////
/**
 * Constants should go up here
 * Making more things constants makes them easier to adjust and play with!
 */
static final int WINDOW_WIDTH = 600;
static final int WINDOW_HEIGHT = 600;
static final int PORT_IN = 8080;
static final int PORT_OUT = 8000; 
static final int SQUARE_NUM = 50;

World currentWorld;

///////////////////////////////////////////////////
// PAPPLET
///////////////////////////////////////////////////

void setup() {
  size(WINDOW_WIDTH, WINDOW_HEIGHT); 
  Hermes.setPApplet(this);

  currentWorld = new TemplateWorld(PORT_IN, PORT_OUT);       

  //Important: don't forget to add setup to TemplateWorld!

  currentWorld.start(); // this should be the last line in setup() method
}

void draw() {
  currentWorld.draw();
}


/**
 * Synchronizes the color of the GlitchySquares
 */
class GlitchyGroup extends Group<GlitchySquare> {

  GlitchyGroup(World w) {
    super(w);
  }
  
  public void update() {
    color c = pickColor();
    for (GlitchySquare s : getObjects()) {
      s.setColor(c);
    }
  }

  private color pickColor() {
    return color(int(random(256)), int(random(256)), int(random(256)));
  }

  public void receive(KeyMessage m) {
    if (m.isPressed()) {
      addSquare();
    }
  }

  public void addSquare() {
    int x = (int) random(WINDOW_WIDTH - 50);
    int y = (int) random(WINDOW_HEIGHT - 50);
    GlitchySquare s = new GlitchySquare(x, y);
    _world.register(s);
    _world.subscribe(s, POCodes.Key.UP);
    _world.subscribe(s, POCodes.Key.RIGHT);
    _world.subscribe(s, POCodes.Key.DOWN);
    _world.subscribe(s, POCodes.Key.LEFT);
    _world.subscribe(s, POCodes.Button.LEFT, s.getShape());
    add(s);
  }
}
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

/**
 * Template interactor between a TemplateBeing and another TemplateBeing
 * Don't forget to change TemplateBeing-s to
 * the names of the Being-types you want to interact
 */
class SquareInteractor extends Interactor<GlitchySquare, GlitchySquare> {
    SquareInteractor() {
        super();
        //Add your constructor info here
    }

    boolean detect(GlitchySquare being1, GlitchySquare being2) {
        //Add your detect method here
        return being1.getShape().collide(being2.getShape());
    }

    void handle(GlitchySquare being1, GlitchySquare being2) {
        //Add your handle method here
        being1.drawStroke();
        being2.drawStroke();
    }
}
/**
 * Template World
 * You'll need to add stuff to setup().
 */
class TemplateWorld extends World {
  TemplateWorld(int portIn, int portOut) {
    super(portIn, portOut);
  }

  void setup() {
    GlitchyGroup g = new GlitchyGroup(this);
    register(g);
    
    for(int i = 0; i < SQUARE_NUM; i++){
      g.addSquare();
    }
    register(g,g,new SquareInteractor());
    subscribe(g, POCodes.Key.A);
  }
  
  void draw(){
    background(0);
    super.draw();
  }
}

