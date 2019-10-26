class Ball{
  PVector location;
  PVector velocity;
  Ball()
  {
    location = new PVector(width/2, height/2);
    velocity = new PVector(2.5, -2);
  }
  void move()
  {
     location = location.add(velocity); 
  }
  
  void bounce()
  {
    if((location.x>width) || location.x<0)
    {
      velocity.x*=-1;
    }
    if((location.y>height) || location.y<0)
    {
      velocity.y*=-1;
    }
    return;
  }
  
  void display()
  {
     stroke(0);
     strokeWeight(2);
     fill(127);
     ellipse(location.x, location.y, 48,48);
    
  }
}
