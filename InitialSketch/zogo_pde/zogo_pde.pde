

void setup()
{
 size(1000,700);
 background(255);
 
}

void draw()
{
 strokeWeight(abs(mouseX-pmouseX)/2 + abs(mouseY-pmouseY)/2);
 line(pmouseX,pmouseY,mouseX,mouseY);
 
}

void mousePressed()
{
   stroke(55);
   fill(175);
   rectMode(CENTER);
   rect(mouseX,mouseY,20,20);
  
}
