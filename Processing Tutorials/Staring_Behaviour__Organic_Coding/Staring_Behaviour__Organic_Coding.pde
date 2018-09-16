import geomerative.*;

PFont pfont;
RFont font;
RGroup grp;
RPoint[] pnts;
int fontSize=192;
float textW=50;
void preload()
{
  //font=createFont("MontserratAlternates-Black.otf",192);
}

void setup()
{
   //size(800,300);
   //preload();
   //textFont(font);
   //background(51);
   //fill(255);
   //noStroke();
   //text("ashish",width/10,height/2.0 + 50);
   
   RG.init(this);
   font = new RFont("arial.ttf", fontSize, RFont.LEFT);
   grp = font.toGroup(typedKey+"");
   textW = grp.getWidth();
   pnts = grp.getPoints();
   for(RPoint p : pnts)
   {
     println(p);
   }
} 

void draw()
{
    
  
}
