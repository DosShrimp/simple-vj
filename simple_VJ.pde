import controlP5.*;

ControlP5 slider, button1, button2, button3, button4;

float BPM;
float fps = 60;

float hoge, huga;
boolean judge = false;
boolean judge2 = false;
boolean judge3 = false;
boolean judge4 = false;

void setup() {
  size(480, 640); 
  
  //スライダー
  slider = new ControlP5(this);
  slider.addSlider("BPM")
    .setRange(40, 300)
    .setValue(60)
    .setPosition(30, 510)
    .setSize(20, 100)
    .setNumberOfTickMarks(259);
  
  slider.getController("BPM")
    .getValueLabel();
    
  //ボタン1
  button1 = new ControlP5(this);
  button1.addButton("button1")
    .setLabel("effect_1")
    .setPosition(100, 510)
    .setSize(100, 40);
    
  //ボタン2
  button2 = new ControlP5(this);
  button2.addButton("button2")
    .setLabel("effect_2")
    .setPosition(100, 570)
    .setSize(100, 40);
  
  //ボタン3
  button3 = new ControlP5(this);
  button3.addButton("button3")
    .setLabel("effect_3")
    .setPosition(220, 510)
    .setSize(100, 40);
  
  //ボタン4
  button4 = new ControlP5(this);
  button4.addButton("button4")
    .setLabel("effect_4")
    .setPosition(220, 570)
    .setSize(100, 40);
  
  //fpsは60
  frameRate(fps);
  hoge = fps;  
}

void draw() {
  background(255, 0, 0);
  
  if(judge) {
    effect1();
  }
  if(judge2) {
    effect2();
  }
  if(judge3) {
    effect2();
  }
  if(judge4) {
    effect1();
  }
  
  GUI();
  
  tempo(BPM);
}

void effect1() {
  float t = map(hoge, fps, 0, 0.0, 1.0);
  color c1 = color(255, 255, 0);
  color c2 = color(255, 0, 255);
  color lc = lerpColor(c1, c2, t);
  noStroke();
  fill(lc);
  rect(0, 0, 480, 480);
}

void effect2() {
  float t = map(hoge, fps, 0, 1.0, 0.0);
  color c1 = color(255, 0, 255);
  color c2 = color(255, 255, 255);
  color lc = lerpColor(c1, c2, t);
  noStroke();
  fill(lc);
  rect(120, 120, 240, 240);
}

void GUI() {
  noStroke();
  fill(0);
  rect(0, 480, 480, 160);
}

void tempo(float _BPM) {
   huga = _BPM / 60;
   hoge = hoge - huga;
  if(hoge < 0) {
    hoge = fps;
  }
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
