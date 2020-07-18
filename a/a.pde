float values[];
color colors[];

int i = 0;
int j = 0;

void setup() {
  size(800, 500);
  values = new float[width];
  colors = new color[width];

  for (int i = 0; i < values.length; i++) {
    values[i] = noise(i)*height;
    colors[i] = color(random(255), random(255), random(255));
  }
}

void swap(float [] arr, int a, int b) {
  float temp = arr[a];
  arr[a] = arr[b];
  arr[b] = temp;
  
  color tempColor = colors[a];
  colors[a] = colors[b];
  colors[b] = tempColor;
}

void draw() {
  background(0);

  if (i < values.length) {
    for (int j = 0; j < values.length - i - 1; j++) {
      float a = values[j];
      float b = values[j+1];
      if (a > b) {
        swap(values, j, j + 1);
      }
    }
  } else {
    println("FINISHED");
    noLoop();
  }

  i++;

stroke(255);
  for (int i = 0; i < values.length; i++) {
    
    line(i, height, i, height - values[i]);
  }
}
