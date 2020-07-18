color colors[];

int i = 0;
int j = 0;

void setup() {
  size(1280, 100);
  colors = new color[width];

  for (int i = 0; i < colors.length; i++) {
    colors[i] = color(random(255), random(255), random(255));
  }
}

void swap(color [] arr, int a, int b) {
  color temp = arr[a];
  arr[a] = arr[b];
  arr[b] = temp;
}

void draw() {
  background(0);

  if (i < colors.length) {
    for (int j = 0; j < colors.length - i - 1; j++) {
      color a = colors[j];
      color b = colors[j+1];
      if (a < b) {
        swap(colors, j, j + 1);
      }
    }
  } else {
    println("FINISHED");
    noLoop();
  }

  i++;



  for (int i = 0; i < colors.length; i++) {
    stroke(colors[i]);
    line(i, 0, i, height);
  }
}
