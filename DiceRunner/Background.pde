public class Background {
  
  int computer = (int)(random(90)+115);
  int winnerc = 1;
  public void Background(){
  
  }
  
  public void Draw(){
//background
//dice
fill(255);
rect(137.5,(height/2)-50,100,100);
rect(27.5,(height/2)-50,100,100);
rect(247.5,(height/2)-50,100,100);
rect(137.5,(height/2)-160,100,100);
rect(27.5,(height/2)-160,100,100);
rect(247.5,(height/2)-160,100,100);
rect(137.5,(height/2)+60,100,100);
rect(27.5,(height/2)+60,100,100);
rect(247.5,(height/2)+60,100,100);


rect(512.5,(height/2)-50,100,100);

//playbutton
fill(255);
rect(37.5,(height/1.25),300,125);
fill(0);
rect(186.25,(height/1.25),3,125);
//score
fill(255);
rect(37.5,(height/10)-50,300,125);
rect(412.5,(height/10)-50,300,125);
//scorebuttons
textSize(40);
fill(0);
text("Roll!",67.5,(height/1.25)+75);
text("Stay",222.5,(height/1.25)+75);
//tests

}
 
public void drawfinal(){
fill(175);
noStroke();
rect(0,height/2-100,375,200);
fill(255,0,0);
textSize(30);
text("Click to restart", width/2-110,height/2+80);
}  
 public void bust() {
   if(totalScore > 165){
   fill(255,0,0);
   textSize(40);
   text("You went bust", width/2-140,height/2-60);
   }
   else {
   fill(255,0,0);
   textSize(40);
   text("You stayed", width/2-110,height/2-60);  
   }
     if(computer > 165){
   fill(255,0,0);
   textSize(30);
   text("Compter went bust!", width/2-150,height/2-10);
   }
   else {
   fill(255,0,0);
   textSize(40);
   text("Computer stayed", width/2-160,height/2-10);
   }
 }
 
 public void winner() {
   
   
   //computer bust, you under
   if(computer > 165 && totalScore <= 165) {
   fill(255,0,0);
   textSize(40);
   text("You win!", width/2-90,height/2+40);
   totalWins = totalWins + winnerc;
   winnerc = 0;
   }
   //you bust, comp under
   if(computer <= 165 && totalScore > 165) {
   fill(255,0,0);
   textSize(40);
   text("You lose", width/2-90,height/2+40);
   }
   //both bust
   if(computer > 165 && totalScore > 165) {
   fill(255,0,0);
   textSize(40);
   text("You tied!", width/2-90,height/2+40);
   }
   //both under, you win
   if(computer <= 165 && totalScore <= 165 && computer < totalScore) {
   fill(255,0,0);
   textSize(40);
   text("You win!", width/2-90,height/2+40);
   totalWins = totalWins + winnerc;
   winnerc = 0;
   }
   //both under, you lose
   if(computer <= 165 && totalScore <= 165 && computer > totalScore) {
   fill(255,0,0);
   textSize(40);
   text("You lose", width/2-90,height/2+40); 
   }
   //if tied
   if(computer <= 165 && totalScore <= 165 && computer == totalScore) {
   fill(255,0,0);
   textSize(40);
   text("You tied!", width/2-90,height/2+40);
   }
   
   
   
 }
 
 public int rcomp() {
 return computer;
 }
 
 public void setComputer(int x) {
   computer = x;
 }
 
 public void setWinnerc(){
   winnerc = 1;
 }
}
