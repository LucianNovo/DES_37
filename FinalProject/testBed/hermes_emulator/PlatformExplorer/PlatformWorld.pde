class PlatformWorld extends World {
  
//  HCamera playerCam;
  
  PlatformWorld(PostOffice po, HCamera cam) {
//    playerCam = cam;
    super(po,cam);
  }
  
  void setup() {
    // set up the platforms
    platforms = new PlatformGroup(world);
    Sector first = new Sector(0, 0, platforms, 0.8);
    SectorGrid grid = new SectorGrid(first, platforms);
  
    // set up platform generation
    world.register(grid, cam, new PlatformGenerator());
  
    // set up the player
    player1 = new Player(0, 60,1);
    player2 = new Player(0,30,2);
    println("player created");
    world.register(player1, true);
    world.register(player2, true);
    po.subscribe(player2, POCodes.Key.W);
    po.subscribe(player2, POCodes.Key.A);
    po.subscribe(player2, POCodes.Key.S);
    po.subscribe(player2, POCodes.Key.D);
    po.subscribe(player1, POCodes.Key.UP);
    po.subscribe(player1, POCodes.Key.DOWN);
    po.subscribe(player1, POCodes.Key.LEFT);
    po.subscribe(player1, POCodes.Key.RIGHT);
    po.subscribe(player1, POCodes.Button.LEFT);

  
    // make player collide with platforms
    world.register(player1, platforms, new PlatformCollider(0));
    world.register(player2, platforms, new PlatformCollider(0));

  }
}
