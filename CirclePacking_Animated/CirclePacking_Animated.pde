Circle c;

ArrayList<Circle> circles; // array list is a object that is list of objects


void setup()
{
   size(600,400);
   c=new Circle(200,200);
   circles=new ArrayList<Circle>();
   circles.add(new Circle(200,200));
  
}

void draw()
{
  background(0);
  c.show();
  for(Circle c: circles){
   c.show(); 
  }
}
