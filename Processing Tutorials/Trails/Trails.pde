//int num = 50;
//int[] x = new int[num];
//int[] y = new int[num];

//void setup() { 
//  size(500, 500);
//  noStroke();
//  fill(255, 102);
//}

//void draw() {
//  background(0);
//  // Shift the values to the right
//  for (int i = num-1; i > 0; i--) {
//    x[i] = x[i-1];
//    y[i] = y[i-1];
//  }
//  // Add the new values to the beginning of the array
//  x[0] = mouseX;
//  y[0] = mouseY;
//  // Draw the circles
//  for (int i = 0; i < num; i++) {
//    ellipse(x[i], y[i], i/2.0, i/2.0);
//  }
//}
int num = 50;
int[] x = new int[num];
int[] y = new int[num];
int indexPosition = 0;

void setup() {
  size(100, 100);
  noStroke();
  fill(255, 102);
}

void draw() {
  background(0);
  x[indexPosition] = mouseX;
  y[indexPosition] = mouseY;
  // Cycle between 0 and the number of elements
  indexPosition = (indexPosition + 1) % num;
  for (int i = 0; i < num; i++) {
    // Set the array position to read
    int pos = (indexPosition + i) % num;
    float radius = (num-i) / 2.0;
    ellipse(x[pos], y[pos], radius, radius);
  }
}
