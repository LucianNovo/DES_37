import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class rotorClass extends PApplet {

class rotor {
  int positionX;
  int positionY;
  String abc   = "zyxuwvutsrqponmlkjihgfedcbabcdefghijklmnopqrstuvwuxyz";
  int[] index  = {-25,-24,-23,-22,-21,-20,-19,-18,-17,-16,-15,-14,-13,-12,-11,-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25};

  boolean rotorDown = (PApplet.parseBoolean(PApplet.parseInt(random(0, 2))));

  int opacity = 255;
  int thecolor = 255;

  float locationUpdate = - 12 * characterSize; 

  int currentIndex = 0;
  char currentCharacter = 'A';
  // int destinationIndex = 0;
  int destinationCharacter;
  
  int indexOffset = 0;

  rotor(int inpPositionX, int inpPositionY) { //main program will be responsible for creating the absolute coordinates
    positionX = inpPositionX; 
    positionY = inpPositionY;
    
    rectMode(CENTER);
    textAlign(CENTER);
    
    for(int j=0; j<height/characterSize; j++){
      fill(0);
      rect(positionX,j*characterSize + 3*characterSize/4,36,36);
      fill(255);
    }  
    writeWord(positionX-.5f,locationUpdate, true);
  }
  
  public void update(){
    if(currentIndex != indexOffset){
       println("Mismatch");
       if(currentIndex<indexOffset){
         writeWord(characterSize/2 + 48.0f, 3*characterSize/4 + locationUpdate, true);
         currentIndex = currentIndex + 1;
         indexOffset  = indexOffset + 1;
         locationUpdate = locationUpdate + 48;
       }
       else if(currentIndex>indexOffset){
         writeWord(characterSize/2 + 48.0f, 3*characterSize/4 + locationUpdate, true);
         currentIndex = currentIndex - 1;
         indexOffset  = indexOffset - 1;
         locationUpdate = locationUpdate - 48;
       }
    }
  }

  public void setDestination(int destIndex){
    indexOffset = destIndex;
  }

  public void writeCharacter(char character,float startX, float startY){
    textAlign(CENTER);
    rectMode(CENTER);
    fill(0);
    rect(startX,startY,characterSize,characterSize);
    fill(255);
    text(character,startX,startY);
  }
  
  public void writeWord(float startX, float startY, boolean _down){ 
    float characterIterator = startY;
    for (char letter : abc.toCharArray())
    {
      writeCharacter(letter,startX,characterIterator);
      if(_down == true){
        characterIterator = characterIterator + characterSize;
      }
      else{
        startX = startX + characterSize;
      }
    }
  }
};

int characterSize = 24; //based on width
int spacing; //based on width
PFont f;     // STEP 2 Declare PFont variable
rotor[] dials;


public void setup(){
  size(1024,600);
  textAlign(CENTER);
  rectMode(CENTER);
  
  //font things
  f = createFont("ONRAMP",36,true); // STEP 3 Create Font
  textFont(f,36);                 // STEP 4 Specify font to be used

  spacing = width/characterSize;
  frameRate(4); 
  
  dials = new rotor[PApplet.parseInt(width/characterSize)];
  
  for(int i=0; i<width/characterSize; i++){
    //make a rotor
    dials[i] = new rotor(i*characterSize + characterSize/2,0);
  }

  String abc = "THISSHIT";
  int indexer = 0;
  for (char letter : abc.toCharArray())
  {
    int destIndex = PApplet.parseInt(map(PApplet.parseFloat(letter), PApplet.parseFloat('A'), PApplet.parseFloat('Z'), 0.0f, 26.0f)); 
    println(destIndex);
    dials[indexer].indexOffset = destIndex;
    dials[indexer].setDestination(destIndex);
    indexer = indexer + 1;
  }
}

public void draw(){ 
  for(int i=0; i<10; i++){
     println(dials[i].indexOffset);    
     dials[i].update();
  }
  
}




  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "rotorClass" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
