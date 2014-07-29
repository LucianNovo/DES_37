/**
 * Template World
 * You'll need to add stuff to setup().
 */
class TemplateWorld extends World {
  
  TemplateWorld(int portIn, int portOut) {
    super(portIn, portOut);
  }

  void setup() {
      Player p1 = new Player();
      register(p1);
      subscribe(p1, POCodes.Key.UP);
      subscribe(p1, POCodes.Key.RIGHT);
      subscribe(p1, POCodes.Key.DOWN);
      subscribe(p1, POCodes.Key.LEFT);
      subscribe(p1, POCodes.Button.LEFT, p1.getShape());
//      add(p1);

//    GlitchyGroup g = new GlitchyGroup(this);
//    register(g);
//    
//    for(int i = 0; i < SQUARE_NUM; i++){
//      g.addSquare();
//    }
//    register(g,g,new SquareInteractor());
//    subscribe(g, POCodes.Key.A);
  }
  
  void draw(){
    background(0);
    
    super.draw();
  }
}
