class Level {
  color c; 
  float xPosition;
  float yPosition;
  float radius;
  float the_strokeWeight;
  float the_fillWeight;
  float expansionRatio;

  Level() {
    c = color(200, 75, 80, 100);
    xPosition = xOrigin;
    yPosition = yOrigin;
    //    radius = 10;
    the_strokeWeight = 1;
    the_fillWeight   = 50;
    radius = random(0, 50);
    expansionRatio   = random(1.05, 1.06);
  }

  void expandPlz() {
    radius = radius * expansionRatio;
    the_strokeWeight = the_strokeWeight * expansionRatio;
    the_fillWeight   = the_fillWeight * expansionRatio;
  }

  void display() {
    rectMode(CENTER);
    //    noFill();
    //    //Create the blue fill
    //    stroke(c);
    //    strokeWeight(the_strokeWeight *10);
    //    ellipse(xPosition,yPosition,radius + (the_fillWeight)/2, radius + (the_fillWeight)/2);

    //Create the white outline
    //    stroke(255);
    //    strokeWeight(the_strokeWeight);
    //    ellipse(xPosition,yPosition,radius, radius);

    colorMode(HSB);
    float value = 0;
    int h = int(map(200, 0, 360, 0, 255));
    int s = int(map(radius,  5*width, 0, 0, 255));
    int b = int(map(80, 0, 100, 0, 255));
    println(hex(c));
    c = color(h, s, b, 150);
    fill(c);
    stroke(255);
    strokeWeight(radius/100);
    ellipse(xPosition, yPosition, radius, radius);
  }

  void check() {
    if (radius > (5 * width)) {
      radius = 1;
      the_strokeWeight = 1;
      the_fillWeight = 50;
    }
  }
}

