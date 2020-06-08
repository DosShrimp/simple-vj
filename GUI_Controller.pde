//サブウィンドウ

import controlP5.*;
ControlP5 slider, button1, button2, button3, button4;

public class Controller extends PApplet {
  float BPM;
  boolean judge = false;
  boolean judge2 = false;
  boolean judge3 = false;
  boolean judge4 = false;
  

  void settings() {
    size(480, 160);
  }
  void setup() {
    //スライダー
    slider = new ControlP5(this);
    slider.addSlider("BPM")
      .setRange(40, 300)
      .setValue(60)
      .setPosition(30, 30)
      .setSize(20, 100)
      .setNumberOfTickMarks(259);
  
    slider.getController("BPM")
      .getValueLabel();
    
    //ボタン1
    button1 = new ControlP5(this);
    button1.addButton("button1")
      .setLabel("effect_1")
      .setPosition(100, 30)
      .setSize(100, 40);
    
    //ボタン2
    button2 = new ControlP5(this);
    button2.addButton("button2")
      .setLabel("effect_2")
      .setPosition(100, 90)
      .setSize(100, 40);
  
    //ボタン3
    button3 = new ControlP5(this);
    button3.addButton("button3")
      .setLabel("effect_3")
      .setPosition(220, 30)
      .setSize(100, 40);
  
    //ボタン4
    button4 = new ControlP5(this);
    button4.addButton("button4")
      .setLabel("effect_4")
      .setPosition(220, 90)
      .setSize(100, 40);
         
  }
  void draw() {
    GUI();
  }
  void GUI() {
    noStroke();
    fill(0);
    rect(0, 0, 480, 160);
  }
  
  void button1() {
    if(judge == false) {
      judge = true;
    } else {
      judge = false;
    }
  }

  void button2() {
    if(judge2 == false) {
      judge2 = true;
    } else {
      judge2 = false;
    }
  }

  void button3() {
    if(judge3 == false) {
      judge3 = true;
    } else {
      judge3 = false;
    }
  }

  void button4() {
    if(judge4 == false) {
      judge4 = true;
    } else {
      judge4 = false;
    }
  }
  
}
