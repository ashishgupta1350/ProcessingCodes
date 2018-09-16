float angle= PI/4;
float STROKE=15;
int number=-1;
void setup() {
    size(500,500);
    //slider= new HScrollbar(200,200,100,100,1000);
    
}

void draw() {
    background(51);
    int len=150; // this should be global
    translate(250,height);
    stroke(255);
    branch(150,0);
    strokeWeight(4);
    //frameRate(1);
    
}

void branch(float len,float level)
{
    if(len<50)
    {
        return;
    }
    //angle=random(PI/2);
    //angle=mouseX*0.01;
    line(0,0,0,-len);
    translate(0,-len);
    //strokeWeight(random(10,20));
    for(int i=1;i<=3;i++)
    {
      pushMatrix();
      if(i==1)
        rotate(PI/3);
       else if(i==2)
       {
         rotate(-PI/6);
       }
       else{
         rotate(-PI);
       }
       
      branch(len*0.67,level+1);
      angle=angle-PI/3;
      number=number*-1;
      popMatrix();
      //pushMatrix();
      ////strokeWeight(10);
      //rotate(-angle);
      //branch(len*0.67,level+1);
      //popMatrix();
    }
    //slider.display();
    // come back    
}
