import processing.pdf.*;

int Y_AXIS = 1;
int X_AXIS = 2;
color b1, b2, c1, c2;

void setup() {
  size(512, 512);
  c1 = color(234, 102, 0);
  c2 = color(170, 20, 20);
  noLoop();
}

void draw() {
  beginRecord(PDF, "arr.pdf");
  setGradient(c1, c2);
  endRecord();
}

void setGradient(color c1, color c2) {
  noFill();
  for (int i = 0; i <= height; i++) {
    float inter = map(i, 0, height, 0, 1);
    color c = lerpColor(c1, c2, inter);
    stroke(c);
    line(0, i, width, i);
  }
  
}