class ball{
  public
  float radius;
  color c;
  PVector vel;
  PVector pos;
  PVector acc;
  float alpha; 
  boolean dissappear;
  ball(float radius, PVector vel,PVector acc)
  {
      this.radius=radius; 
      this.pos=new PVector(radius,radius);
      this.vel=vel ;
      this.acc=acc;
      this.alpha=255;
      this.dissappear=false;
  }
  void setColor(color c)
  {
    this.c=c;
  }
  void setVelocity(PVector vel)
  {
    this.vel=vel;
  }
  void setPosition(PVector pos)
  {
    this.pos=pos;
  }
  void update()
  {
    if(this.dissappear)
    {
      this.alpha-=25; // well dissappear
    }
    stroke(0,200,0,this.alpha);
    fill(0,255,0,this.alpha);
    ellipse(this.pos.x,this.pos.y,radius,radius);
  }
  
  // now the ball has a name.
}

//ball b=new ball(25,new PVector(20,10),new PVector(2.0,0.1));
ball []balls = new ball[7];
float ballRad=20/2.0;
void setup()
{
   background(0);
   size(500,500);
   
   //b.update();
   //b.setVelocity(new PVector(10,10));
   //b.vel.x=10;
   //b.vel.y=10;
   for(int i=0;i<7;i++)
   {  
     balls[i]=new ball(20,new PVector(random(-10,10),random(-10,10)), new PVector(random(0),random(0)));
   }
   frameRate(40);
   
}
void draw()
{
  background(0);
  
  for(ball b:balls)
  {
    
    
    float x=b.pos.x;
    float y=b.pos.y;
    if((x + b.radius/2.0) >= width || (x - b.radius/2.0)<=0)
    {
      b.vel.x*=-1;
      if(x-b.radius<0)
      {
        b.pos.x=b.radius;
      }
      
    }
    if((y + b.radius/2.0) >= height || (y - b.radius/2.0)<=0)
    {
      b.vel.y*=-1;
      if(y<0){
        b.pos.y=b.radius;
      }
      
    }
  
      //println(b.pos);  println(b.vel);
    
    //b.pos.x+=b.vel.x; // this might be a case, we have to see!
    //b.pos.y+=b.vel.y;
    b.pos.add(b.vel);
    b.vel.add(b.acc);
    
    //println(b.pos,b.vel);
    b.update();
  }
 
}
void mousePressed()
{
   //println("mousePressed"); 
   for(ball b:balls)
   {
      float dist=sqrt((mouseX-b.pos.x)*(mouseX-b.pos.x) + (mouseY-b.pos.y)*(mouseY-b.pos.y));
      println(dist);
      if(dist<=b.radius)
      {
         // kill the ball and remove it from the balls array 
         // kill the ball from the array, or maybe outside?, draw 20 different balls, assign them some random direction and velocity and make them dissappear???
         // ball - > opacity -- 0;
         // ball -> time of existance =INF
         b.dissappear=true;
         break;
               
      } 
   }
  
}
