public class MakeHouse {

public void MakeHoue() {
}

public void makeHouse(int x, int y, int z, int size) {

pushMatrix();
translate(x,y,z);
stroke(80,40,0);
fill(85,45,0);
box(size);
popMatrix();


}

public void makeRoof() {

 beginShape();
fill(121,121,121);
stroke(94,94,94);
vertex(-10,-22,10);
vertex(10,-22,10);
vertex(0,-42,0);
vertex(-10,-22,10);
endShape();


beginShape();
fill(121,121,121);
stroke(94,94,94);
vertex(10,-22,10);
vertex(10,-22,-10);
vertex(0,-42,0);
vertex(10,-22,10);
endShape();


beginShape();
fill(121,121,121);
stroke(94,94,94);
vertex(-10,-22,-10);
vertex(10,-22,-10);
vertex(0,-42,0);
vertex(-10,-22,-10);
endShape();


beginShape();
fill(121,121,121);
stroke(94,94,94);
vertex(-10,-22,10);
vertex(-10,-22,-10);
vertex(0,-42,0);
vertex(-10,-22,10);
endShape();
}

public void makeDoor() {
beginShape();
fill(51,25,0);
stroke(0);
vertex(0,-3,10.1);
vertex(6,-3,10.1);
vertex(6,-12,10.1);
vertex(0,-12,10.1);
vertex(0,-12,10.1);
endShape();

beginShape();
fill(255,255,102);
stroke(0);
vertex(-7,-10,10.1);
vertex(-3,-10,10.1);
vertex(-3,-14,10.1);
vertex(-7,-14,10.1);
vertex(-7,-14,10.1);
endShape();
}

}
