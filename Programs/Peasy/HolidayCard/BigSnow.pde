public class BigSnow {
  float x = (float)(Math.random()*200)+1;
 
  float y = (float)(Math.random()*-20)-40;
   
  float z = (float)(Math.random()*1)-200;
 
  float size = (float)Math.random()*20;

  float speed=(float)(Math.random()*5)+1;
 
  public BigSnow(){

  }
  
  public void display(){

   
  pushMatrix();
  fill(255);
  sphere(size);
  translate(x,y,z);
  popMatrix();
   y+=speed;

   if(y > 0){

     y = -40;

    x = (float)(Math.random()*200)+1;

   }
   
  }
  
}
  
     
