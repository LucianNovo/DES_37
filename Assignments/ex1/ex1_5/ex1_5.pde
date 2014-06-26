     // Ellipses that demonstrate intersections
     // Lucian Novosel - 2014
     // Open sourcerer on the internet of things
     // WWW: luciannovosel.com GH: github.com/luciannovo     
     // Make black background
     
     void setup(){
        size(300, 300);
        background(255);
        smooth();
        
        rectMode(CENTER);
        stroke(0,0,0,120);
        strokeWeight(2);
        rect(width/2,height/2,299,299);
       
       //backmost semicircle
        pushMatrix();
        stroke(0,0,0,0);
        fill(0,0,0,255);
        strokeWeight(10);
        translate(width/2,height/2);
        rotate(radians(-90));
        arc(0, 0, 300, 300, 0, PI, PIE);
        popMatrix();
    
        //Frontmost circle
        stroke(255,255,255,0);
        fill(255,255,255,255);
        strokeWeight(4);
        pushMatrix();
        translate(width/2,height/2);
        ellipse(0, 0, 150, 150);
        popMatrix();
            
        //Frontmost semicircle
        stroke(0,0,0,255);
        fill(0,0,0,255);
        strokeWeight(0);
        pushMatrix();
        translate(width/2,height/2);
        rotate(radians(90));
        arc(0, 0, 150, 150, 0, PI, PIE);
        popMatrix();
     }
