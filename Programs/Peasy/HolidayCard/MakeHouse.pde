public class MakeHouse {

public void MakeHoue() {
}

public void makeHouse(int x, int y, int z, int size) {

pushMatrix();

translate(x,y,z);

fill(85,45,0);

box(size);

popMatrix();

}

public void makeRoof() {

 beginShape();

fill(94,94,94);

stroke(0);

vertex(-10,-22,10);

vertex(10,-22,10);

vertex(0,-42,0);

vertex(-10,-22,10);

endShape();


beginShape();

fill(94,94,94);

stroke(0);

vertex(10,-22,10);

vertex(10,-22,-10);

vertex(0,-42,0);

vertex(10,-22,10);

endShape();


beginShape();

fill(94,94,94);

stroke(0);

vertex(-10,-22,-10);

vertex(10,-22,-10);

vertex(0,-42,0);

vertex(-10,-22,-10);

endShape();


beginShape();

fill(94,94,94);

stroke(0);

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
vertex(8,0,.1);
vertex(12,0,.1);
vertex(12,6,.1);
vertex(8,6,.1);
vertex(8,0,.1);

endShape();
}

}
