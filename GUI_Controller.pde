//サブウィンドウ

import controlP5.*;
ControlP5 slider, aSlider, button1, button2, button3, button4;

public class Controller extends PApplet {
  float BPM, a;
  boolean judge = false;
  boolean judge2 = false;
  boolean judge3 = false;
  boolean judge4 = false;
  
  boolean aJudge = false;
  boolean aJudge2 = false;
  int aCount = 0;
  int aCount2 = 0;
  

  void settings() {
    size(500, 160);
  }
  void setup() {
    textAlign(CENTER, CENTER);
    textSize(16);
    
    //スライダー
    slider = new ControlP5(this);
    slider.addSlider("BPM")
      .setRange(40, 200)
      .setValue(60)
      .setPosition(30, 30)
      .setSize(20, 100)
      .setNumberOfTickMarks(199);
  
    slider.getController("BPM")
      .getValueLabel();
      
    //a値スライダー
    aSlider = new ControlP5(this);
    aSlider.addSlider("a")
      .setRange(0, 100)
      .setValue(100)
      .setPosition(380, 30)
      .setSize(100, 20)
      .setNumberOfTickMarks(99);
  
    aSlider.getController("a")
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
    rect(0, 0, 500, 160);
    
    if(aJudge) {
      fill(19, 114, 226);
    } else {
      fill(5, 45, 95);
    }
    rect(390, 80, 30, 30);
    fill(255);
    text(aCount, 405, 93);
    
    if(aJudge2) {
      fill(19, 114, 226);
    } else {
      fill(5, 45, 95);
    }
    rect(440, 80, 30, 30);
    fill(255);
    text(aCount2, 455, 93);
  }
  
  
  void button1() {
    if(aJudge && aCount2 != 1) {
      if(judge == false) {
        judge = true;
      }
      aCount = 1;
      aJudge = false;
    } else if(aJudge2 && aCount != 1) {
      if(judge == false) {
        judge = true;
      }
      aCount2 = 1;
      aJudge2 = false;
    } else if (aCount == 1 && aJudge2 == false){
      judge = false;
      aCount = 0;
    } else if (aCount2 == 1 && aJudge == false) {
      judge = false;
      aCount2 = 0; 
    }
  }

  void button2() {
    if(aJudge && aCount2 != 2) {
      if(judge2 == false) {
        judge2 = true;
      }
      aCount = 2;
      aJudge = false;
    } else if(aJudge2 && aCount != 2) {
      if(judge2 == false) {
        judge2 = true;
      }
      aCount2 = 2;
      aJudge2 = false;
    } else if (aCount == 2 && aJudge2 == false){
      judge2 = false;
      aCount = 0;
    } else if (aCount2 == 2 && aJudge == false) {
      judge2 = false;
      aCount2 = 0; 
    }
  }

  void button3() {
    if(aJudge && aCount2 != 3) {
      if(judge3 == false) {
        judge3 = true;
      }
      aCount = 3;
      aJudge = false;
    } else if(aJudge2 && aCount != 3) {
      if(judge3 == false) {
        judge3 = true;
      }
      aCount2 = 3;
      aJudge2 = false;
    } else if (aCount == 3 && aJudge2 == false){
      judge3 = false;
      aCount = 0;
    } else if (aCount2 == 3 && aJudge == false) {
      judge3 = false;
      aCount2 = 0; 
    }
  }

  void button4() {
    if(aJudge && aCount2 != 4) {
      if(judge4 == false) {
        judge4 = true;
      }
      aCount = 4;
      aJudge = false;
    } else if(aJudge2 && aCount != 4) {
      if(judge4 == false) {
        judge4 = true;
      }
      aCount2 = 4;
      aJudge2 = false;
    } else if (aCount == 4 && aJudge2 == false){
      judge2 = false;
      aCount = 0;
    } else if (aCount2 == 4 && aJudge == false) {
      judge2 = false;
      aCount2 = 0; 
    }
  }
  
  //自作GUIの判定
  void mousePressed() {
    if(aJudge == false && mouseX > 390 && mouseX < 420 && mouseY > 80 && mouseY < 110 && aJudge2 == false){
      aJudge = true;
    }
    
    if(aJudge2 == false && mouseX > 440 && mouseX < 470 && mouseY > 80 && mouseY < 110 && aJudge == false){
      aJudge2 = true;
    }
  }
}
