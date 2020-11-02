int totalp;
int totalb;
int countp;
int countb;
int countw;
int rollnum1, rollnum2, rollnum3, rollnum4, rollnum5, rollnum6, rollnum7, rollnum8, rollnum9;
int totalScore = 0;
int xpos = 0;
int ypos = 0;
boolean end = false;
int totalWins = 0;


Background b = new Background();
DiceRender one = new DiceRender(110,110);
DiceRender two = new DiceRender(110,0);
DiceRender three = new DiceRender(110,-110);
DiceRender four = new DiceRender(0,110);
DiceRender five = new DiceRender(0,0);
DiceRender six = new DiceRender(0,-110);
DiceRender seven = new DiceRender(-110,-110);
DiceRender eight = new DiceRender(-110,0);
DiceRender nine = new DiceRender(-110,110);

void setup(){
size(375,750);
background(0);


}

void draw(){
//165
  b.Draw();
  fill(0);
  textSize(20);
  text("total score: " + totalScore, 47.5,(height/10)-5);
  text("total wins: " + totalWins, 47.5,(height/10)+60);
  textSize(16);
  fill(255,0,0);
  text("try to get as close to 165 as possible", 47.5,(height/10)-30);
  one.displayNum(rollnum1);
  two.displayNum(rollnum2);
  three.displayNum(rollnum3);
  four.displayNum(rollnum4);
  five.displayNum(rollnum5);
  six.displayNum(rollnum6);
  seven.displayNum(rollnum7);
  eight.displayNum(rollnum8);
  nine.displayNum(rollnum9);
  
  
  
  
  if(rollnum1 == -1 || totalScore > 165) {
    rollnum1 = -1;
    b.drawfinal();
    fill(0);
    textSize(20);
    text("Computer score: " + b.rcomp(), 47.5,(height/10+27));
    delay(500);
    b.bust();
    b.winner();
    end = true;
  }
}

void mousePressed() {
  if(rollnum1 != -1) {
  rollnum1 = one.roll();
  rollnum2 = two.roll();
  rollnum3 = three.roll();
  rollnum4 = four.roll();
  rollnum5 = five.roll();
  rollnum6 = six.roll();
  rollnum7 = seven.roll();
  rollnum8 = eight.roll();
  rollnum9 = nine.roll();
  if(rollnum1 != -1){
  totalScore = totalScore + rollnum1 + rollnum2 + rollnum3 + rollnum4 + rollnum5 + rollnum6 + rollnum7 + rollnum8 + rollnum9;
  }
  }
  if(end == true) {
    if(mouseX > 0 && mouseX < 375 && mouseY > height/2-100 && mouseY < height/2+100 && mousePressed){
      reset();
      }
  }
}

void reset() {
  clear();
  one.setNum();
  two.setNum();
  three.setNum();
  four.setNum();
  five.setNum();
  six.setNum();
  seven.setNum();
  eight.setNum();
  nine.setNum();       
  totalScore = 0;
  b.setComputer((int)(random(90)+115));
  rollnum1 = 0;
  b.setWinnerc();
  end = false;
}
