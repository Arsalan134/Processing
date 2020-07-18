PImage img;

void setup() {
  size(640, 1136);
  background(255);
  img = loadImage("g1.PNG");
  img.resize(width, height);
}

void draw() {
  for (int i =0; i < 25; i++) {
    int x = int(random(width));
    int y = int(random(height));
    textSize(random(15, 30));
    fill(red(img.pixels[x+y*width]), green(img.pixels[x+y*width]), blue(img.pixels[x+y*width]), 255);
    text(returnLetter("gusik"), x, y);
  }
}

char returnLetter(String name) {
  char a = name.charAt(int(random(name.length())));
  return a;
}
