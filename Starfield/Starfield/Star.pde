class Star{
  float x;
  float y;
  float z;
  float px,cx;
  float py,cy;
  
  Star()
  {
    x = random(0,width);
    y = random(0,height);
    z = random(0, width);
  }
  
  void update()
  {
    
    cx = width/2;
    cy = height/2;
    // know which quadrant does the star lie in and the vector.)
    px = x-cx;
    py = y-cy; // px and py are the position of the vectors
    
    x = x+px*0.01;
    y = y+py*0.01;
    
    if(x>width||y>height||x<0||y<0)
    {
      x = random(width/3,2*width/3);
      y = random(height/3,2*height/3);
      z = random(0, width);
    }
    //if(cx>=0 && cy >=0)
    //{
    //  // move the star in the direction of the vector by a certain amount
    //  x+=cx;
    //  y+=cy;
    //}
    //else if(cx>=0 && cy<=0)
    //{
      
    //}
    //else if(cx<=0 && cy>=0)
    //{
    //}
    //else{
      
    //}
    // move the star along the vector 
    // if star is out of the screen update the star 
    
    
  }

  void show()
  {
    fill(255);
    noStroke();
    ellipse(x,y,8,8);
    
  }
}
