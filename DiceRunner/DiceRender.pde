public class DiceRender {
  
  int rollnum = 1;
  int xpos;
  int ypos;
  
  public DiceRender(int x, int y) {
  xpos = x;
  ypos = y;
  }
  
  public int roll() {
    
   if(rollnum != -1) {
    if(mouseX > 37.5 && mouseX < 186.25 && mouseY > (height/1.25) && mouseY < (height/1.25)+125 && mousePressed){
      return (int)(random(6)+1);
      }
    
    if(mouseX > 186.25 && mouseX < 337.5 && mouseY > (height/1.25) && mouseY < (height/1.25)+125 && mousePressed){
      rollnum = -1;
      return -1;
      }
   }
   return 0;
}
  
  
  public void displayNum(int x) {
    
    
    
     if(x == 1) {
      fill(0);
      noStroke();
      circle(xpos + 187.5, ypos + 375, 24);
    }
    else if(x == 2) {
      fill(0);
      noStroke();
      circle(xpos + 212.5,ypos + 400, 24);
      circle(xpos + 162.5,ypos + 350, 24);
    }
    else if(x == 3) {
      fill(0);
      noStroke();
      circle(xpos + 212.5,ypos + 400, 24);
      circle(xpos + 162.5,ypos + 350, 24);
      circle(xpos + 187.5,ypos + 375, 24);
    }
    else if(x == 4) {
      fill(0);
      noStroke();
      circle(xpos + 212.5,ypos + 400, 24);
      circle(xpos + 162.5,ypos + 350, 24);
      circle(xpos + 212.5,ypos + 350, 24);
      circle(xpos + 162.5,ypos + 400, 24);
    }
    else if(x == 5) {
      fill(0);
      noStroke();
      circle(xpos + 212.5,ypos + 400, 24);
      circle(xpos + 162.5,ypos + 350, 24);
      circle(xpos + 212.5,ypos + 350, 24);
      circle(xpos + 162.5,ypos + 400, 24);
      circle(xpos + 187.5,ypos +  375, 24);
    }
    else if(x == 6) {
      fill(0);
      noStroke();
      circle(xpos + 212.5,ypos + 400, 24);
      circle(xpos + 162.5,ypos + 350, 24);
      circle(xpos + 212.5,ypos + 350, 24);
      circle(xpos + 162.5,ypos + 400, 24);
      circle(xpos + 212.5,ypos + 375, 24);
      circle(xpos + 162.5,ypos + 375, 24);      
    }
    
    else {
      
    }

}

public void setNum() {
  rollnum = 1;
}
  
}
