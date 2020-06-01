import controlP5.*;

ControlP5 slider;

float BPM;
float fps = 60;

float hoge, huga;

void setup() {
  size(480, 640); 
  
  slider = new ControlP5(this);
  slider.addSlider("BPM")
    .setRange(40, 300)
    .setValue(60)
    .setPosition(30, 510)
    .setSize(20, 100)
    .setNumberOfTickMarks(259);
  
  slider.getController("BPM")
    .getValueLabel();
  
  //fpsは60
  frameRate(fps);
  hoge = fps;  
}

void draw() {
  background(255, 0, 0);
  
  float t = map(hoge, fps, 0, 255, 0);
  float t2 = map(hoge, fps, 0, 0, 255);

  effect1(t);
  effect2(t2);
  
  GUI();
  
  tempo(BPM);
}

void effect1(float _t) {
  noStroke();
  fill(0, 255, 0, _t);
  rect(0, 0, 480, 480);
}

void effect2(float _t) {
  noStroke();
  fill(0, 0, 255, _t);
  rect(0, 0, 480, 480);
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
