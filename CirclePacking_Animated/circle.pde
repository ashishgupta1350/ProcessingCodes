class Circle{
 float x;
 float y;
 float r=20;
 
  Circle(float x_,float y_)
  {
     x=x_;y=y_;
    r=50;
  }
  void show()
  {
    stroke(255);
    strokeWeight(3);
    noFill();
    ellipse(x,y,r,r); 
     
  }
  
}
