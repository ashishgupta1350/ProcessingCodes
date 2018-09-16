float x,y;
float px,py;
void setup()
{
  x=0;y=0;
  size(700,600);
  background(0);
  stroke(255);
  strokeWeight(3);
  //translate(700,0); 
  // lets code the barnley fern
  
  //float p=map(1,-1,1,0,600);
  //println(p);
  
}

void nextPoint()
{
  
  float rv=random(1);
   if(rv<.01){
     px  = 0;
     py  = 0.16 * y;
   }
   else if(rv<0.86)
   {
     px  = 0.85 * x + 0.04 * y;
     py  = -0.04 * x + 0.85 * y + 1.6;
   }
   else if(rv<0.93)
   {
     px  = 0.2 * x - 0.26 * y;
     py  = 0.23 * x + 0.22 * y + 1.6;
   }
   else{
     px  = -0.15 * x + 0.28 * y;
     py  = 0.26 * x + 0.24 * y + 0.44;
   }
   x=px;
   y=py;
    
  
}
void draw()
{
  for(int i=0;i<50;i++){
    nextPoint();
    float px=map(x,-2.1320,2.6558,0,width);
    float py=map(y,0,9.9983,height,0); // to reverse the tree bottom up
    
    point(px,py);
  }
  //translate(350,height);.
 
}
