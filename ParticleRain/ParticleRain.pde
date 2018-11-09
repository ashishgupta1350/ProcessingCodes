// purple rain
drop d;

drop[]drops=new drop[500];
void setup()
{
   size(640,360); 
   d=new drop();
   for(int i=0;i<drops.length;i++)
   {
      drops[i]=new drop(); 
     
   }
}

void draw()
{
  background(230,230,230);
  for(int i=0;i<drops.length;i++)
  {
    drops[i].fall();
    drops[i].show();
  }
  
}
