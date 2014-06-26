   //5-line pattern
   //Lucian Novosel - 2014
   //Open sourcerer on the internet of things
   // WWW: luciannovosel.com GH: github.com/luciannovo
    
    int howMany = 10;
    float[] x = new float[howMany];
    float[] y = new float[howMany];
    float[] speed = new float[howMany];
     
    void setup() {
      size(300, 300);
      background(0);
      smooth();
     
     //initialize every line
      int i = 0;
      while (i<howMany) {
        x[i] = random(0, width);
        y[i] =random(0, height);
        speed[i] = random(1,5);
        i +=1;
      }
    }
     
    void draw() {
      //just affirming something
      background(0);
      stroke(255, 255, 255);
     
      //update the position of the lines     
      int i = 0;
      while (i < howMany) {
        fill(50*speed[i]);
        line(x[i], y[i],x[i], y[i] - 10);
        y[i] += speed[i]/2;
        if (y[i] > height) {
          y[i] = 0;
        }
        i +=1;
      }
      
      //Create the image
      String imgPath = ("../../generatedImagesEX1/" + frame.getTitle());
      saveFrame(imgPath);
    }

