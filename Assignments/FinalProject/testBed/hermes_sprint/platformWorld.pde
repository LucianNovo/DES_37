/**
 * Template World
 * You'll need to add stuff to setup().
 */
class PlatformWorld extends World {
  
  PlatformWorld(PostOffice po, HCamera cam) {
    super(po,cam);
  }

  void setup() {
      platforms = new PlatformGroup(world); 
      Sector first = new Sector(0,0,platforms,0.8); 
    
      SectorGrid grid = new SectorGrid(first, platforms);
      
      //set up platform generation
      world.register(grid,cam, new PlatformGenerator());
    
      Player p1 = new Player();
      println("player created");

      register(p1);
      subscribe(p1, POCodes.Key.UP);
      subscribe(p1, POCodes.Key.RIGHT);
      subscribe(p1, POCodes.Key.DOWN);
      subscribe(p1, POCodes.Key.LEFT);
      
      // make player collide with platforms
      world.register(player, platforms, new PlatformCollider(0));
  }
  
  void draw(){
    background(0);
    super.draw();
  }
}
