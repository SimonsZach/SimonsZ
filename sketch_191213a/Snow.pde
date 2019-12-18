public class BigSnow {
  float x = 0;
  float y = 0;
  float z = 0;
  float size = 0;
  float speed=0;
  public BigSnow(){

  }
  
  public void reset() {
   x = random(0,200);
   y = random(-50, -40);
   z = random (-200,0);
   size = random(10,20);
  speed = random(.5,2);
  }
  public void display(){
pushMatrix();
fill(255);
noStroke();
translate(x,y,z);
sphere(size);
popMatrix();
 y = y + speed;
 
 if(y >= 0) {
   reset();
 }

}
   
}
   
  

 
