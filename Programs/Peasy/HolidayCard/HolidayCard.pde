
import peasy.*;
float a = 0;
PeasyCam cam;

void setup() {

  size(1000,500,P3D);

  cam = new PeasyCam(this, 100);

  cam.setMinimumDistance(180);

  cam.setMaximumDistance(500);

}

void draw() {
  a= a+.001;
  MakeHouse h = new MakeHouse();
  MakeGround n = new MakeGround();
 
  rotateX(-.3);
  rotateY(a);
  background(0);
  ambientLight(255,255,255,50,100,-50);
  
n.makeGround();
h.makeHouse(0,-12,0,20);
h.makeRoof();
//h.makeDoor();

}