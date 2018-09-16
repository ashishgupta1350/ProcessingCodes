float time = 0.0;
float increment = 0.01;
void setup() {
size(200,200);
smooth();
}
void draw() {
  background(255);
  float n = noise(time)*width;
  //fi g. 13.4
  //Get a noise value at “time” and scale
  //it according to the window’s width.
  // With each cycle, increment the "time"
  time += increment;
  // Draw the ellipse with size determined by Perlin noise
  fill(0);
  ellipse(width/2,height/2,n,n);
}
