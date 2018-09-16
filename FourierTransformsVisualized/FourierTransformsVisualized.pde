float x=0;
float y=0;
float prevX=0;
float prevY=0;
void setup()
{
  size(500,500);
  background(0);
  stroke(255);
  strokeWeight(4);
 
  frameRate(100);
}

void draw()
{
  prevX=x;
  prevY=y;
   translate(0,height/2);
  y=100*(sin(x/.01) + sin(3*(x/0.01))/3.0 + sin(5*(x/0.010))/5.0);
  
  //point(x,y);
  line(prevX,prevY,x,y);
  x+=2;
  
}
