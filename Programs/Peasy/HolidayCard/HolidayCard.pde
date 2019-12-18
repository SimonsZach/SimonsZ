
import peasy.*;
float a = 0;
PeasyCam cam;
BigSnow snowFlake;
BigSnow[]mySnow=new BigSnow[10];
void setup() {
  size(1000,500,P3D);
  cam = new PeasyCam(this, 100);
  cam.setMinimumDistance(180);
  cam.setMaximumDistance(500);
  
  snowFlake = new BigSnow();
  for(int i=0; i<mySnow.length; i++) {
    mySnow[i]=new BigSnow();
  }
  
}

void draw() {
   for(int i=0; i<mySnow.length; i++){

    mySnow[i].display();

  }
  
  a= a+.001;
  MakeHouse h = new MakeHouse();
  MakeGround n = new MakeGround();
 BigSnow snow = new BigSnow();
 
  rotateX(-.3);
  rotateY(a);
  background(0);
  ambientLight(255,255,255,50,100,-50);
  
n.makeGround();
h.makeHouse(0,-12,0,20);
h.makeRoof();
//snow.display();
h.makeDoor();

}
