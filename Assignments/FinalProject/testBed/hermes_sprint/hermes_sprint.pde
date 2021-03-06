/**
 * A template to get you started
 * Define your beings, groups, interactors and worlds in separate tabs
 * Put the pieces together in this top-level file!
 */
import processing.opengl.*;
import java.util.Hashtable;

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
static final float GRAVITY = -200; // acceleration due to gravity

///////////////////////////////////////////////////
// WORLD VARIABLES  
///////////////////////////////////////////////////
World world;
PlatformCamera cam;
PostOffice po;
PlatformGroup platforms;
Player player;

///////////////////////////////////////////////////
// PAPPLET
///////////////////////////////////////////////////

void setup() {
  size(WINDOW_WIDTH, WINDOW_HEIGHT,JAVA2D); 
  Hermes.setPApplet(this);
  
  // set up the world, camera, and post office
  cam = new PlatformCamera();
  po = new PostOffice();
  world = new PlatformWorld(po, cam);    
  
  frameRate(24);

  //Important: don't forget to add setup to TemplateWorld!
  world.start(); // this should be the last line in setup() method
  
}

void draw() {
  background(255);
  world.draw();
}


