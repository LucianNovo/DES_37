class Particle {
  float x, y;
  float diameter;
float theta = 0.0;


// particle sizes are wave intensity Decibels(Db)
//particles speeds are wave frequencies Hertzs(Hz)
  Particle (float hz, float db) {
    
   theta=hz;
   
    diameter=db;
  }
  
  
  void display(){
    noStroke();
    strokeWeight(0);
    smooth();
    fill(0,80);
    
  }
 //move the bubble
 
 
void oscillate(){

  
  // Increment theta (try different values for " angular velocity " here)
  theta += theta/100000;


  float x = theta;
  
   // A for loop is used to draw all the points along a sine wave (scaled to the pixel dimension of the window).
  for (int i = 0; i <= 200; i++) {
    // Calculate y value based off of sine function
    float y = sin(x)*height/4;
    // Draw an ellipse
    ellipse(i*50,y + height/2,diameter,diameter);
  
    // Move along x-axis
    x += 0.4;
  }

}
}
