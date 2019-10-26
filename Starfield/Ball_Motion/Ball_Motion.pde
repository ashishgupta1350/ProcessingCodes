
Ball ball;
void setup()
{
  size(400,300);
 ball = new Ball();
 
  
  
}


void draw()
{
  background(255);
  ball.display();
  ball.move();
  
  ball.bounce();
  
}
