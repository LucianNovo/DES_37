/**
 * Represents the stationary platforms in the game
 */
class Platform extends MassedBeing {
 
  static final float HEIGHT = 10.0f;              // the platform's height
  final color COLOR = color(#E0692B);  // the platform's color

  float width;   // width of this platform

  /**
   * makes a Platform with given center and width
   */
  Platform(PVector center, float width) {
    super(new HRectangle(center, width, HEIGHT), HermesMath.zeroVector(), HermesMath.INFINITY, 1);
    this.width = width;
  }
 
  void draw() {
    fill(COLOR);
    noStroke();
    rect(0, 0, width, HEIGHT, 5);
  }
 
}
