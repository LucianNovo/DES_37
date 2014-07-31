import processing.opengl.*;
import java.util.Hashtable;

//Libraries for controllers
import procontroll.*;
import java.io.*;


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

//Hermes
World world;
Player player1, player2;
PlatformCamera cam;//
PostOffice po;
PlatformGroup platforms;

//Controllers make room for 4, expect 2
ControllIO controllModule;
ControllDevice[] PS3_Controllers = new ControllDevice[4];
ControllButton buttonArrayP1_dPad, buttonArrayP2_dPad;
int playerCount = 2; 

///////////////////////////////////////////////////
// PAPPLET
///////////////////////////////////////////////////

void setup() {
  
  //double check to make sure we have the correct controllers
  controllModule = ControllIO.getInstance(this);
  controllModule.printDevices();
  PS3_Controllers[0] = controllModule.getDevice(controllModule.getNumberOfDevices()-1);
  PS3_Controllers[0].setTolerance(0.05f);
  PS3_Controllers[1] = controllModule.getDevice(controllModule.getNumberOfDevices()-2);
  PS3_Controllers[1].setTolerance(0.05f);
  if(playerCount == 4){
    PS3_Controllers[2] = controllModule.getDevice(controllModule.getNumberOfDevices()-3);
    PS3_Controllers[3] = controllModule.getDevice(controllModule.getNumberOfDevices()-4);
  }
  
  
  buttonArrayP1_dPad = device.getButton(
  
  
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
