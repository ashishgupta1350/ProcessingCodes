import peasy.*;

float x = 0.01;
float y = 0;
float z = 0;
float a=20.0;
float b=40.0;
float c=8/3.0;

PeasyCam cam;
ArrayList<PVector> points=new ArrayList<PVector>();
void setup()
{
   size(800,600,P3D); 
   cam=new PeasyCam(this,500); // number shows to show the world from 100 units away
   colorMode(HSB);
   stroke(255);
   strokeWeight(1);
   
}

void draw()
{
  //for(int i=0;i<10;i++){
  //float lastX=x;
  //float lastY=y;
  //float lastZ=z;
  background(0);
  float dt=0.01;
  float dx =( a*(y-x) )* dt;
  float dy = (x*(b-z) - y) *dt;
  float dz = (x*y - c*z)*dt;
  x=x+dx;
  y=y+dy;
  z=z+dz;
  scale(5);
  points.add(new PVector(x,y,z));
  
  noFill();
  beginShape();
  float hu=0;
  for(PVector v : points)
  {
      stroke(hu,255,255);
      vertex(v.x,v.y,v.z);
      //line(v.x
      hu+=0.1;
      if(hu>255)
      {
        hu=0;
      }
  }
  endShape();
  
  
}
