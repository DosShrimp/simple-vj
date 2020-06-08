float fps = 60;
float hoge, huga;
Controller sa;

//メインウィンドウ
void settings() {
  size(480, 480);
}

void setup() {
  
  String[] args = {"SecondApplet"};
  sa = new Controller();
  PApplet.runSketch(args, sa);
  
  //fpsは60
  frameRate(fps);
  hoge = fps;   //<>//
}

void draw() {
  background(255, 0, 0);
  
  if(sa.judge) {
    effect1();
  }
  if(sa.judge2) {
    effect2();
  }
  if(sa.judge3) {
    effect3();
  }
  if(sa.judge4) {
    effect4();
  }
  
  tempo(sa.BPM);
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

void effect3() {
  float t = map(hoge, fps, 0, 1.0, 0.0);
  color c1 = color(255, 0, 255);
  color c2 = color(255, 255, 255);
  color lc = lerpColor(c1, c2, t);
  stroke(0);
  fill(lc);
  ellipse(240, 240, 200, 200);
}

void effect4() {
  float t = map(hoge, fps, 0, 1.0, 0.0);
  color c1 = color(255, 0, 255);
  color c2 = color(255, 255, 255);
  color lc = lerpColor(c1, c2, t);
  stroke(0);
  fill(lc);
  ellipse(240, 240, 40, 40);
}

void tempo(float _BPM) {
   huga = _BPM / 60;
   hoge = hoge - huga;
  if(hoge < 0) {
    hoge = fps;
  }
}
