public class Player {
  int Xpos, Ypos;
  public Player(int xpos, int ypos) {
    Xpos =xpos;
    Ypos =ypos;
  }
  
  
  
  public void drawPlayer() {
    fill(0,240,0);
    stroke(0,200,0);
    strokeWeight(2);
    circle(Xpos, Ypos, 15); 
  }
  
  public void movePlayer() {
   if(dist(Xpos, Ypos, mouseX, mouseY) < 40) {
     Xpos = Xpos + (int)(random(31)-15);
     Ypos = Ypos + (int)(random(21)-10);
   }
   else {
     Xpos = Xpos + ((mouseX - Xpos)/2);
     Ypos = Ypos + ((mouseY - Ypos)/2);
   }
  }
  public int getUp() {
    return Ypos - 8;
  }
   public int getDown() {
     return Ypos + 8;
  }
   public int getLeft() {
     return Xpos - 8;
  }
   public int getRight() {
     return Xpos + 8;
  }
  
}
