import peasy.*;

PeasyCam cam;

void setup() {
  size(1000,500,P3D);
  cam = new PeasyCam(this, 100);
  cam.setMinimumDistance(150);
  cam.setMaximumDistance(500);
}
void draw() {
  rotateX(-.5);
  rotateY(-.5);
  background(0);
  fill(250);
  box(120,10,120);
  //pushMatrix();
  //translate(0,0,20);
 // fill(0,0,255);
 // box(5);
 // popMatrix();
}
