public class MakeHouse
{

public void MakeHoue()
{

}

public void makeHouse(int x, int y, int z, int size)
{
pushMatrix();
translate(x,y,z);
fill(153,76,0);
box(size);
popMatrix();
}
public void makeRoof()
{
  

 beginShape();
fill(128,128,128);
stroke(0);
vertex(-10,-22,10);
vertex(10,-22,10);
vertex(0,-42,0);
vertex(-10,-22,10);
endShape();

beginShape();
fill(128,128,128);
stroke(0);
vertex(10,-22,10);
vertex(10,-22,-10);
vertex(0,-42,0);
vertex(10,-22,10);
endShape();

beginShape();
fill(128,128,128);
stroke(0);
vertex(-10,-22,-10);
vertex(10,-22,-10);
vertex(0,-42,0);
vertex(-10,-22,-10);
endShape();

beginShape();
fill(128,128,128);
stroke(0);
vertex(-10,-22,10);
vertex(-10,-22,-10);
vertex(0,-42,0);
vertex(-10,-22,10);
endShape();

}





  
  
  
  
  
  
  


}
