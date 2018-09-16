import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class zogo_pde extends PApplet {



public void setup()
{
 fill(150);
 
 rectMode(CENTER);
 //arc(50, 50, 80, 80, 0, PI+QUARTER_PI, OPEN);
 arc(50, 50, 80, 80, 0, PI, OPEN);
 ellipseMode(CORNERS);
 ellipse(100,100,200,200);
 
}
  public void settings() {  size(200,200); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "zogo_pde" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
