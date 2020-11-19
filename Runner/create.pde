public class create {
  int x = 0;
  int y = 0;
  public create(int a, int b) {
    x=a;
    y=b;
  }
  
  public void drawthing() {
    fill(230,230,0);
    noStroke();
    circle(x, y, 25);
  }

public int getleft() {
  return x - 13;
}

public int getright() {
  return x + 13;
}
public int getup() {
  return y - 13;
}
public int getdown() {
  return y + 13;
}



}
