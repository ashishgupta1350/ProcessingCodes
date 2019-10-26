
Star[] stars = new Star[200];

void setup()
{
   size(400,400);
   
  for(int i=0;i<stars.length;i++)
  {
    stars[i] = new Star();
  }
  
}

void draw()
{
  //delay(100);
  
  background(0);
  for(int i=0; i<stars.length;i++)
  {
    stars[i].update();
    stars[i].show();
  }
  
  
  
}
