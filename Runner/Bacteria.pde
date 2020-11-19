public class Bacteria {

  int Size, Ypos, Xpos, Color;  
  
  public Bacteria(int size, int col, int xpos, int ypos) {
    Size = size;
    Color = col;
    Xpos = xpos;
    Ypos = ypos;
  }
  
  public void move() {
   //RandomWalk Xpos
   if(Xpos > -5) {
    if(Xpos >= 12 && Xpos <= 788) {
      Xpos = Xpos + (int)(random(10)-5);
    }
    else if(Xpos < 12){
      Xpos = Xpos + (int)(random(10)+1);
    }
    else {
      Xpos = Xpos + (int)(random(10)-10);
    }
    
    //RandomWalk Ypos
    if(Ypos >= 12 && Ypos <= 788) {
      Ypos = Ypos + (int)(random(10)-5);
    }
    else if(Ypos < 12){
      Ypos = Ypos + (int)(random(10)+1);
    }
    else {
      Ypos = Ypos + (int)(random(10)-10);
    }
   }
   
}

  public void drawBac() {
    fill(Color,0,0);
    noStroke();
    circle(Xpos, Ypos, Size);
  }
  
  public int leftHitbox() {
    return Xpos - (Size/2);
  }
  public int upHitbox() {
    return Ypos - (Size/2);
  }
  public int downHitbox() {
    return Ypos + (Size/2);
  }
  public int rightHitbox() {
    return Xpos + (Size/2);
  }
  
  public void setX(int x) {
    Xpos = x;
  }
}
