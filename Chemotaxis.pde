dots [] particles;
int a=0;
int b=0;
int rate=1;
void setup(){
  size(500,500);
  particles= new dots[50];
  for(int r = 0; r < particles.length; r++){
    particles[r] = new dots();
  }
  }



class dots{
  int myX, myY;
  //constructor 
  dots(){
    myX = width/2;
    myY = height/2;
  }
  void show(){
    fill(255);
    ellipse(myX,myY,10,10);
  }
  void kinetic_energy(){
  
      if (myX > 415)
        a = -4;
      if (myY > 395)
        b = -4;
      if (myX < 45)
        a = 4;
      if (myY < 45)
        b = 2;
        
    
    
    myX = myX + (int)((Math.random()*3)*rate)+a;
    myY = myY + (int)((Math.random()*3)*rate)+b;
  }
}
  
void draw(){
  background(95, 123, 207);
 textSize(10);
line(mouseX, mouseY, mouseX, mouseY);
//noStroke();
fill(0,0,0);
text(mouseX+ "," + mouseY,20,20);

//simulation area
fill(148, 150, 156);
rect(45,45,370,350);
//button
fill(255,0,0);
textSize(30);
rect(30,420,50,50);
text("-",50,495);
fill(0,255,0);
rect(100,420,50,50);
text("+",122,495);


for(int i = 0; i < particles.length; i++){
    particles[i].kinetic_energy();
    particles[i].show();
  }
textSize(25);
if (rate==0)
  text("temperature: absolute zero ",170,445);
if (rate==1)
  text("temperature: 0 C",170,445);
if (rate==2)
  text("temperature: 20 C",170,445);
if (rate==3)
  text("temperature: 40 C",170,445);
text("all other conditions at STP",170,470);
} 

 void mousePressed(){
  //- button
if (mouseX > 30 && mouseX < 80 && mouseY > 420 && mouseY < 470) {
    rate--;
  }
  
  //+ button
if (mouseX > 100 && mouseX < 151 && mouseY > 420 && mouseY < 470) {
    rate++;
  }

   if (rate < 1 || rate > 3) {
     rate= 0;
     
    }
  }

