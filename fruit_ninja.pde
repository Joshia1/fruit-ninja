import org.openkinect.freenect.*;
import org.openkinect.freenect2.*;
import org.openkinect.processing.*;
import org.openkinect.tests.*;

//Aadya
//Fruit Ninja

Kinect kinect;

PImage dragonfruit;

float x;
int i;
int y= 400;
int ySpeed = 5;

void setup ()
{
size (800,800);
  kinect = new Kinect(this);
  kinect.initDepth(); 
  kinect.initVideo();
  dragonfruit = loadImage ("Dragonfruit.png");
}


void draw ()
{
  background (255);
  
  Drawfruit ();
}

void Drawfruit ()
{

  image (dragonfruit, x, y);
x += random (-3,3);

  y += ySpeed;
  if (y > height || y < 0)
  {
    ySpeed *= -1;
  }

}