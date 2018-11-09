class drop
{
    float x=random(width);
    float y=random(-500,-100);
    
    float z=random(0,20); // maping the speed of the rain
    float len=map(z,0,20,10,20);
    float yspeed=map(z,0,20,4,8);
    
    void fall()
    {
      y=y+yspeed;
      if(y>height)
       {
         y=random(-200,-100);
         yspeed=map(z,0,20,4,10);
       }
       float grav=map(z,0,20,0,0.1);
       yspeed=yspeed+grav;
    }
    
    void show()
    {
      stroke(138,43,226);
      float strokeWt=map(z,0,20,1,3);
      strokeWeight(strokeWt);
      line(x,y,x,y+len);
      
    }
    
  
}
