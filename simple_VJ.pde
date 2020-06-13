float fps = 60;
float hoge, huga;
Controller sa;

//Variable for effects
float angle = 0.0;

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
  background(0);
  
  if(sa.judge) {
    if(sa.aCount == 1 || sa.aCount2 == 1) {
      effect1();
    }
  }
  if(sa.judge2) {
    if(sa.aCount == 2 || sa.aCount2 == 2) {
      effect2();
    }
  }
  if(sa.judge3) {
    if(sa.aCount == 3 || sa.aCount2 == 3) {
      effect3();
    }
  }
  if(sa.judge4) {
    if(sa.aCount == 4 || sa.aCount2 == 4) {
      effect4();
    }
  }
  
  tempo(sa.BPM);
}

void effect1() {
  float t = map(hoge, fps, 0, 0.0, 1.0);
  color c1 = color(255, 255, 0);
  color c2 = color(255, 0, 255);
  color lc = lerpColor(c1, c2, t);
  noStroke();
  if(sa.aCount == 1) {
    float a1 = map(sa.a, 0, 100, 0, 255);
    fill(lc, a1);
  } else if(sa.aCount2 == 1) {
    float a2 = map(sa.a, 0, 100, 255, 0);
    fill(lc, a2);
  }
  rect(0, 0, 480, 480);
}

void effect2() {
  float t = map(hoge, fps, 0, 1.0, 0.0);
  noStroke();
  float size = map(t, 1.0, 0.0, 2, 10);
  if(sa.aCount == 2) {
    float a1 = map(sa.a, 0, 100, 0, 255);
    fill(255, a1);
  } else if(sa.aCount2 == 2) {
    float a2 = map(sa.a, 0, 100, 255, 0);
    fill(255, a2);
  }
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(angle));
  for(int i = 0; i < 180; i++){
    float r = 150 * abs(sin(radians(i * 5)));
    float x = r * cos(TAU * i / 180);
    float y = r * sin(TAU * i / 180);
    ellipse(x, y, size, size);
  }
  popMatrix();
  angle += 0.1;
}

void effect3() {
  float t = map(hoge, fps, 0, 1.0, 0.0);
  color c1 = color(255, 255, 0);
  color c2 = color(255, 255, 255);
  color lc = lerpColor(c1, c2, t);
  pushMatrix();
  noFill();
  stroke(lc);
  translate(width/2, height/2);
  rotate(radians(angle));
  rect(-75, -75, 150, 150);
  rect(-150, -150, 300, 300);
  popMatrix();
  angle += 0.1;
}

void effect4() {
  float t = map(hoge, fps, 0, 1.0, 0.0);
  float size = map(t, 1.0, 0.0, 0, 500);
  noFill();
  stroke(0, 255, 255);
  ellipse(width/2, height/2, size, size);
}

void tempo(float _BPM) {
   huga = _BPM / 60;
   hoge = hoge - huga;
  if(hoge < 0) {
    hoge = fps;
  }
}
