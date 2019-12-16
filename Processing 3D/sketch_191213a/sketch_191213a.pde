
import peasy.*;

PeasyCam cam;

void setup() {
  size(1000,500,P3D);
  cam = new PeasyCam(this, 100);
  cam.setMinimumDistance(150);
  cam.setMaximumDistance(500);
}
void draw() {
  MakeHouse h = new MakeHouse();
  rotateX(-.5);
  //rotateY(-.5);
  background(0);
  fill(255);
  stroke(0);
  box(200,10,200);
 
h.makeHouse(0,-12,0,20);
h.makeRoof();

}
