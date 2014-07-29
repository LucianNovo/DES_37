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
