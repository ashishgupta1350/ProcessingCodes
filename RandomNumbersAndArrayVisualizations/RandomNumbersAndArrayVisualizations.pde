//Processing Code for Lorenz System
// have a point!
// have some x, y , z
// x= some differential , y= some, z= some
// trace the path of the particle as it iterates

// x = differential equation
// dt as the frame rate!
// x-prevX=sigma*(y-x);
// y-prevY=x*(rho - z) -y;
// z-prevZ=x*y - beta*z;
int index=0;
int[]randoms=new int[20];
void setup()
{
  //float x,y,z;
  //x=0;y=0;z=0;
  //size(500,500);
  //translate(width/10,width/2);
  
  size(300,300);
  for(int i=0;i<20;i++)
  {
     randoms[i]=int(random(100,255)); 
  }
  background(0);
  stroke(255);
  fill(200);
  for(int i=0;i<randoms.length;i++)
  {
     rect(10*i,0,10,randoms[i]); 
  }
}
void draw(){
  // probability mapping 
  float r=random(1);
  if(r<0.6)
  {
     // draw a red circle
     fill(255,0,0);
     ellipse(random(width),random(height),20,20);
  }
  else if(r<0.8)
  {
    fill(0,255,0);
    ellipse(random(width),random(height),20,20);
  }
  else{
    fill(0,0,255);
    ellipse(random(width),random(height),20,20);
  }
  
  
}
