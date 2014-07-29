import processing.opengl.*;
import java.util.Hashtable;

import hermes.*;
import hermes.hshape.*;
import hermes.animation.*;
import hermes.physics.*;
import hermes.postoffice.*;

///////////////////////////////////////////////////
// DEFINE
///////////////////////////////////////////////////

static final int WINDOW_WIDTH = 600;
static final int WINDOW_HEIGHT = 600;

static final float GRAVITY = -200; // acceleration due to gravity
int PlayerID = 1;

PImage backgroundImg;


///////////////////////////////////////////////////
// GLOBAL VARS
///////////////////////////////////////////////////

World world;
Player player1, player2;
PlatformCamera cam;//
PostOffice po;
PlatformGroup platforms;
///////////////////////////////////////////////////
// PAPPLET
///////////////////////////////////////////////////

void setup() {
  size(WINDOW_WIDTH, WINDOW_HEIGHT, JAVA2D);  // set window size
  Hermes.setPApplet(this);            // give the library the PApplet
  
  // set up the world, camera, and post office
  PlayerID = 1;
  cam = new PlatformCamera(PlayerID);//
  po = new PostOffice();
  world = new PlatformWorld(po, cam);
  
  //initializing the background image
  backgroundImg = loadImage("mountain.jpg");
//  rectMode(CENTER);
  
  frameRate(60);
  
  //Sets up and starts world
  world.start();
}

void draw() {
  image(backgroundImg, 0, 0);
  world.draw();
}
