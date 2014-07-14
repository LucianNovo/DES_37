float dropletArray[] = {
  0.4722, 0.9624, 1.5068, 2.1051, 2.7561, 3.4579, 4.2082, 5.004, 5.7672, 6.4574, 7.0087, 7.34, 7.5139, 7.5139, 7.4981, 7.3578, 7.0716, 6.6183, 5.9726, 5.073, 3.7451
};

Pulsor[] pulsorArray;

void setup() {
  size(500, 500, P3D);
  stroke(255);
  strokeWeight(3);
  noFill();
  
  pulsorArray = new Pulsor[dropletArray.length];
  for(int i=0; i<dropletArray.length; i++){
    pulsorArray[i] = new Pulsor(dropletArray[i],5.0,i);
  }
}

void draw() {
  background(0);
  for (int i=0; i<dropletArray.length;i=i+1) {
    pushMatrix();
    translate(width/2, height/2, (i*10));
    rectMode(CENTER);
    stroke(255);
    ellipse(0, 0, dropletArray[i] * 20, dropletArray[i] * 20);
    popMatrix();
  }

  camera(width, height, 60, 0, 0, 58, -1, -1, 0);
  
  for(int i = 0; i<pulsorArray.length; i = i + 1){
      pulsorArray[i].update();
      pulsorArray[i].display();
      pulsorArray[i].check();
  }
  
}

class Pulsor {
  float p_radius;
  color c;
  float expansion_inc;
  int   iterator;
  
  Pulsor(){
    p_radius = 0;
  }
  
  Pulsor(float dropletRadius, float expansionInc, int iter){
    p_radius = dropletRadius * 20;
    c = color(255, 255);
    expansion_inc = expansionInc;
    iterator = iter;
  }
  
  void update(){
    p_radius = p_radius + expansion_inc;
  }
  
  void display(){
    int transparency = int(map(p_radius, 0, width*2, 230, 0));
    stroke(255, transparency);
    noFill();
    pushMatrix();
    translate(width/2, height/2, (iterator*10));
    rectMode(CENTER);
    ellipse(0, 0, p_radius, p_radius);
    popMatrix();
  }
  
  void check(){
    if(p_radius > width*2){
      p_radius = dropletArray[iterator];
    }
  }

}

