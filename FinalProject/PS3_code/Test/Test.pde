import procontroll.*;
import java.io.*;

ControllIO controll1;
ControllIO controll2;
ControllDevice device1;
ControllDevice device2;
ControllStick stick1;
ControllStick stick2;
ControllButton button1;
ControllButton button2;

void setup(){
  size(400,400);
  
  controll1 = ControllIO.getInstance(this);
  controll2 = ControllIO.getInstance(this);

  device1 = controll1.getDevice(5);
  device2 = controll2.getDevice(4);

//  device.printSticks();
//  device.printSliders();
//  device.printButtons();
  device1.setTolerance(0.05f);
  device2.setTolerance(0.05f);
  
  ControllSlider sliderX1 = device1.getSlider("x");
  ControllSlider sliderY1 = device1.getSlider("y");
  
  ControllSlider sliderX2 = device2.getSlider("x");
  ControllSlider sliderY2 = device2.getSlider("y");
 
  stick1 = new ControllStick(sliderX1,sliderY1);
  stick2 = new ControllStick(sliderX2,sliderY2);
  button1 = device1.getButton("0");
  button2 = device2.getButton("0");
  
  fill(0);
  rectMode(CENTER);
}

float totalX1 = width/2;
float totalY1 = height/2;

float totalX2 = width/2;
float totalY2 = height/2;

void draw(){
  background(255);
  
  if(button1.pressed()){
    fill(255,0,0);
  }else{
    fill(0);
  }
  if(button2.pressed()){
    fill(255,0,0);
  }else{
    fill(0);
  }

  totalX1 = constrain(totalX1 + stick1.getX(),10,width-10);
  totalY1 = constrain(totalY1 + stick1.getY(),10,height-10);
  
  rect(totalX1,totalY1,20,20);


  totalX2 = constrain(totalX + stick2.getX(),10,width-10);
  totalY2 = constrain(totalY + stick2.getY(),10,height-10);
  
  rect(totalX2,totalY2,20,20);
}
