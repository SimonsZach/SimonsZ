
import peasy.*;
float a = 0;
PeasyCam cam;

BigSnow snowFlake;
BigSnow[]mySnow=new BigSnow[200];

void setup() {
  translate(width/2,height/2);
  size(1000,500,P3D);
  cam = new PeasyCam(this, 100);
  cam.setMinimumDistance(200);
  cam.setMaximumDistance(500);
  //translate(width/2,height/2,0);

  snowFlake = new BigSnow();

  for(int i=0; i<mySnow.length; i++) {
    mySnow[i]=new BigSnow();
  }
}

void draw() {
if(mousePressed == true)
a = a + .001;
else
  a= a+.0035;
  MakeHouse h = new MakeHouse();
  MakeGround n = new MakeGround();
  
  //BigSnow snow = new BigSnow();
 
 rotateX(-.15);
  rotateY(a);
  background(0);
  ambientLight(255,255,255,50,100,-50);
  
  
n.makeGround();
h.makeHouse(0,-12,0,20);
h.makeRoof();
h.makeDoor();
 //pointLight(255,255,255,100,-150,-100);
   for(int i=0; i<mySnow.length; i++){

    mySnow[i].display();

  }
/*pointLight(255,255,255,0,-30,0);
n.makeGround();
h.makeHouse(0,-12,0,20);
h.makeRoof();
h.makeDoor();*/
}
