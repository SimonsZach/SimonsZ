
int Gameover = 0;
int test = 0;
int playerCount = 0;
int scorekeeper = 0;
int wins = 0;
int loses = 0;
int winamount = 1;
int loseamount = 1;


//variables used for balancing the game
//set bac to 300, amount t0 15, and playeramount t0 5 for mega hardmode :(

//amount of bacteria
Bacteria[] bac = new Bacteria[225];
//amount of yellow orbs
int amount = 15;
//amount of green cells per yellow orb
int playeramount = 8;


ArrayList<create> cr = new ArrayList<create>();
ArrayList<Player> pl = new ArrayList<Player>();



void setup() {
  noCursor();
  size(800, 800);
  background(0);
 for(int z = 0; z<amount; z++) {
   cr.add(new create((int)(random(775)+25),(int)(random(775)+25)));
 }
  for(int i=0; i < bac.length; i++) {
    bac[i] = new Bacteria((int)(random(10)+10), (int)(random(254)+70), (int)(random(700)+50), (int)(random(700)+50)); 
  }
}



void draw() {
  if(Gameover == 1) {
   clear();
   noCursor();
   background(255);
   fill(0,0,255);
   noStroke();
   circle(mouseX, mouseY, 15);
   winamount = 1;
   loseamount = 1;
   for(int i=0; i < cr.size(); i++) {
     cr.get(i).drawthing();
   } 
   for(int i=0; i < bac.length; i++) {
     bac[i].move();
     bac[i].drawBac();
   }
   for(int i=0; i < bac.length; i++) {
  if(mouseX + 7.5 > bac[i].leftHitbox() && mouseX - 7.5 < bac[i].rightHitbox()) {
     if(mouseY + 7.5 > bac[i].upHitbox() && mouseY - 7.5 < bac[i].downHitbox()) {
       Gameover = 2;
     }
   } 
  }
  for(int c = 0; c < cr.size(); c++) {
    if(mouseX + 7.5 > cr.get(c).getleft() && mouseX - 7.5 < cr.get(c).getright()) {
     if(mouseY + 7.5 > cr.get(c).getup() && mouseY - 7.5 < cr.get(c).getdown()) {
       cr.set(c, new create(-100, -100));
       playerCount = playerCount + playeramount;
       scorekeeper ++;
     }
    }
  }
  while(playerCount > 0) {
    pl.add(new Player(mouseX, mouseY));
    playerCount--;
  }
  if(pl.size() > 0) {
for(int i = 0; i < pl.size(); i++) {
  pl.get(i).movePlayer();
  pl.get(i).drawPlayer();
    }
  }
  if(pl.size() > 0) {
  for(int i = 0; i<pl.size(); i++ ) {
    for(int x = 0; x < bac.length; x ++) {
      if(pl.get(i).getRight() > bac[x].leftHitbox() && pl.get(i).getLeft() < bac[x].rightHitbox()) {
        if(pl.get(i).getDown() > bac[x].upHitbox() && pl.get(i).getUp() < bac[x].downHitbox()) {
          pl.remove(i);
          i--;
          bac[x].setX(-1000);
          break;
          //cr.set(i, new create(-100, -100));
        }
      }
    }
  }
  }
    //score
   fill(0);
   textSize(30);
   text(scorekeeper + "/" + amount + " orbs collected!", width/2-150, 40);
   text("Total Wins : " + wins, 100, 780);
   text("Total loses : " + loses, 500, 780);
  }
  else if(Gameover == 2) {
   clear();
   cursor();
   noStroke();
   textSize(45);
   fill(255);
   text("Gameover", width/2 - 110, height/2-100);
   textSize(30);
   fill(0,235,0);
   text("Click to Restart",  width/2 -110, height/2 - 20);
   textSize(15);
   text("(click in corners for best results!)", width/2 -120, height/2+5);
   textSize(30);
   fill(235,0,0);
   text("Press Enter to Return to Menu",  width/2 -210, height/2 + 70);
   while(loseamount == 1) {
   loses ++;
   loseamount=0;
   }
   for(int z = 0; z<amount; z++) {
   cr.set(z, new create((int)(random(775)+25),(int)(random(775)+25))); 
    }
    for(int i=0; i < bac.length; i++) {
    bac[i] = new Bacteria((int)(random(10)+10), (int)(random(254)+70), (int)(random(700)+50), (int)(random(700)+50)); 
  }
  scorekeeper = 0;
   pl.clear();
   if(mousePressed) {
     Gameover = 1;
   }
  }
  else if(Gameover == 0) {
   cursor();
   background(0);
   fill(255);
   textSize(50);
   text("Welcome to N A M E", width/2-250, 200); 
   textSize(15);
   text("The rules are simple. You are the blue cell, if you touch the red bacteria...you die.", width/2-300, 300);
   text("Your primary objective is to collect all of the yellow orbs before you get eaten up by the bacteria.",width/2-350, 335);
   text("Don't worry though, when you collect the orbs you will gain some white blood cells...who are actually green.",width/2-390, 370);
   text("These green cells will follow you and lay down their cell lives to protect you from the bacteria.",width/2-350, 405);
   textSize(35);
   fill(0,235,0);
   text("Click to Begin!", width/2-125, 525);
   textSize(15);
   text("(Click in corners for best results!)", width/2-124, 550);
   if(mousePressed) {
     Gameover = 1;
   }
  } 
  if(scorekeeper == amount) {
    delay(100);
    Gameover = 3;
  }
  if(Gameover == 3) {
   cursor();
   background(0);
   fill(255);
   textSize(50);
   text("You Win!", width/2-110, height/2 -85);
   textSize(30);
   fill(0,235,0);
   text("Click to Restart",  width/2 -110, height/2 - 20);
   textSize(15);
   text("(click in corners for best results!)", width/2 -120, height/2+5);
   textSize(30);
   fill(235,0,0);
   text("Press Enter to Return to Menu",  width/2 -210, height/2 + 70);
   while(winamount == 1) {
   wins ++;
   winamount = 0;
   }
   for(int z = 0; z<amount; z++) {
   cr.set(z, new create((int)(random(775)+25),(int)(random(775)+25))); 
    }
    for(int i=0; i < bac.length; i++) {
    bac[i] = new Bacteria((int)(random(10)+10), (int)(random(254)+70), (int)(random(700)+50), (int)(random(700)+50)); 
  }
  scorekeeper = 0;
   pl.clear();
   if(mousePressed) {
     Gameover = 1;
   }
  }
}



void keyPressed() {
  if(Gameover == 2 && key == ENTER) {
    Gameover = 0;
    loses = 0;
    wins = 0;
  }
  if(Gameover == 3 && key == ENTER) {
    Gameover = 0;
    loses = 0;
    wins = 0;
  }
}
