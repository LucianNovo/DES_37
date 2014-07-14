

//
int horzCubes = 10;
int vertCubes = horzCubes;
int cubeCount = vertCubes * horzCubes;

float horzIncrement;
float vertIncrement;

//
float margin = .2;
float marginMultiplier = margin - .2;

//
PVector cubeBottomPositionArray = new PVector[cubeCount];
PVector cubeTopPositionArray = new PVector[cubeCount];
float cubeHeightArray        = new float[cubeCount];
PVector cubeTarget1Array   = new PVector[cubeCount];
PVector cubeTarget2Array   = new PVector[cubeCount];

//
void setup(){
  //dumb shit
  stroke(0);
  fill(255);
  size(500,500);
  
  
  //initialize position of each vector
  horzIncrement = width/horzCubes;
  if(horzCubes == vertCubes){
    vertIncrement = horzIncrement;
  }
  
  //initialize position of each vector
  for(int i=0; i<cubeCount; i++){
    for(int j=0; j<cubeCount; j++){
      cubeBottomPositionArray[j + i*vertCubes].x = i * horzIncrement;
      cubeBottomPositionArray[j + i*vertCubes].y = j * vertIncrement;
      cubeBottomPositionArray[j + i*vertCubes].z = i * j; 
      
      cubeHeightArray[
      
      cubeTopPositionArray[j + i*vertCubes].x = i * horzIncrement;
      cubeTopPositionArray[j + i*vertCubes].y = i * horzIncrement;
      cubeTopPositionArray[j + i*vertCubes].z = i * j; 
    }
  } 
  
  //
}
  
void draw(){
  //
  
  
}
  
