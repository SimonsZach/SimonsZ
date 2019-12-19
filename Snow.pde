public class BigSnow {
  float x = 0;
  float y = 0;
  float z = 0;
  float size = 0;
  float speed=0;

  public BigSnow(){
    reset();
  }
  
  public void reset() {
   x = random(-100,100);
   y = random(-120, -115);
   z = random (-100,100);
   size = random(.5,1);
   speed = random(.25,.5);
  }

  public void display(){
    pushMatrix();
    fill(223,223,223);
    noStroke();
    translate(x,y,z);
    sphere(size);
    popMatrix();
   if(mousePressed == true)
   y = y + .17;
   else
    y = y + speed;
 
   if(y >= 0) {
       reset();
    }
  }
}
   
