String file = "310-461.csv";
Table table;
ArrayList poop;
ArrayList poop1;
ArrayList poop2;
ArrayList poop3;
int distance =50;
boolean flag=true;

int index;
int beat;

circle[] arcircle1;



void setup(){   
  frameRate(24);
  fullScreen();
  //size(1000, 1000);
  smooth();
  poop = new ArrayList();
  poop1 = new ArrayList();
  poop2 = new ArrayList();
  poop3 = new ArrayList();
  
  table = loadTable(file, "header");
 
  arcircle1 = new circle[table.getRowCount()];
  
  
  for (int i=0;i<120;i++) {
    PVector PD1 = new PVector(-250, 200);
    PVector PO1 = new PVector(-250, 200);
    Dots D1 = new Dots(PD1,PO1);
    poop.add(D1);
  }


for (int i=0;i<120;i++) {
    PVector PD2 = new PVector(250, -200);
    PVector PO2 = new PVector(250, -200);
    Dots D2 = new Dots(PD2,PO2);
    poop1.add(D2);
  }


 for (int i=0;i<120;i++) {
    PVector PD3 = new PVector(-250, -200);
    PVector PO3 = new PVector(-250, -200);
    Dots D3 = new Dots(PD3,PO3);
    poop2.add(D3);
  }


for (int i=0;i<120;i++) {
    PVector PD4 = new PVector(250, 200);
    PVector PO4 = new PVector(250, 200);
    Dots D4 = new Dots(PD4,PO4);
    poop3.add(D4);
  }

 index = 0;
 beat = 0;
}



void draw(){
  
  background(0);
  translate(width/2, height/2);
 
       if(index>=arcircle1.length){
     index=0;
     }
  
  
    //for (int i=0;i<120;i++) {
    //PVector PD1 = new PVector(-250, 200);
    //PVector PO1 = new PVector(-250, 200);
    //Dots D1 = new Dots(PD1,PO1);
    //poop.add(D1);
  //}
////  
  
  
  
  for (int i=0;i< table.getRow(index).getFloat("valence");i++) {
    Dots dots1 = (Dots) poop.get(i);
    dots1.display();
    dots1.update();
    for (int j=i+1;j< table.getRow(index).getFloat("valence");j++) {
      Dots dots2 = (Dots) poop.get(j);
      dots2.update();
      if (dist(dots1.location.x, dots1.location.y, dots2.location.x, dots2.location.y)<distance) {
        for (int k=j+1;k< table.getRow(index).getFloat("valence");k++) {
          Dots dots3 = (Dots) poop.get(k);
          dots3.update();
          if (flag) {
            if (table.getRow(index).getFloat("valence")>100) {
            fill(255);
            noStroke();
          }
            else{
            fill(91,154,0,random(150,200));
            noStroke();}
          }
          
          if (dist(dots3.location.x, dots3.location.y, dots2.location.x, dots2.location.y)<distance) {
            beginShape();
            vertex(dots3.location.x, dots3.location.y);
            vertex(dots2.location.x, dots2.location.y);
            vertex(dots1.location.x, dots1.location.y);
            endShape(); }}}}}
          
   
      
      
      
      
      
      
      
      
      // 22222222222222222222  
      
      
      
      for (int i=0;i< table.getRow(index).getFloat("frustration");i++) {
    Dots dx1 = (Dots) poop1.get(i);
    dx1.display();
    dx1.update();
    for (int j=i+1;j< table.getRow(index).getFloat("frustration");j++) {
      Dots dx2 = (Dots) poop1.get(j);
      dx2.update();
      if (dist(dx1.location.x, dx1.location.y, dx2.location.x, dx2.location.y)<distance) {
        for (int k=j+1;k< table.getRow(index).getFloat("frustration");k++) {
          Dots dx3 = (Dots) poop1.get(k);
          dx3.update();
          if (flag) {
            if (table.getRow(index).getFloat("frustration")> 100) {
            fill(255);
            noStroke();
           
          }
            else{
            fill(191,8,186,random(150,200));
            noStroke();}
          }
          if (dist(dx3.location.x, dx3.location.y, dx2.location.x, dx2.location.y)<distance) {
            beginShape();
            vertex(dx3.location.x, dx3.location.y);
            vertex(dx2.location.x, dx2.location.y);
            vertex(dx1.location.x, dx1.location.y);
            endShape(); }}}}}
    
  


 //333333333333333333333333333333





for (int i=0;i< table.getRow(index).getFloat("excitement");i++) {
    Dots dx1 = (Dots) poop2.get(i);
    dx1.display();
    dx1.update();
    for (int j=i+1;j< table.getRow(index).getFloat("excitement");j++) {
      Dots dx2 = (Dots) poop2.get(j);
      dx2.update();
      if (dist(dx1.location.x, dx1.location.y, dx2.location.x, dx2.location.y)<distance) {
        for (int k=j+1;k< table.getRow(index).getFloat("excitement");k++) {
          Dots dx3 = (Dots) poop2.get(k);
          dx3.update();
          if (flag) {
            if (table.getRow(index).getFloat("excitement")<0) {
            fill(255);
            noStroke();
          }
            else{fill(255,85,0,random(150,200));
            noStroke();
          }
        }
         
          
         if (dist(dx3.location.x, dx3.location.y, dx2.location.x, dx2.location.y)<distance) {
            beginShape();
            vertex(dx3.location.x, dx3.location.y);
            vertex(dx2.location.x, dx2.location.y);
            vertex(dx1.location.x, dx1.location.y);
            endShape(); }}}}}



//4444444444444444444444444444444444444




for (int i=0;i< table.getRow(index).getFloat("focus");i++) {
    Dots dx1 = (Dots) poop3.get(i);
    dx1.display();
    dx1.update();
    for (int j=i+1;j< table.getRow(index).getFloat("focus");j++) {
      Dots dx2 = (Dots) poop3.get(j);
      dx2.update();
      if (dist(dx1.location.x, dx1.location.y, dx2.location.x, dx2.location.y)<distance) {
        for (int k=j+1;k< table.getRow(index).getFloat("focus");k++) {
          Dots dx3 = (Dots) poop3.get(k);
          dx3.update();
          if (flag) {
            if (table.getRow(index).getFloat("focus")>100) {
            fill(255);
            noStroke();
          }
            else{
            fill(0,137,235,random(150,200));
            noStroke();}
          }
          if (dist(dx3.location.x, dx3.location.y, dx2.location.x, dx2.location.y)<distance) {
            beginShape();
            vertex(dx3.location.x, dx3.location.y);
            vertex(dx2.location.x, dx2.location.y);
            vertex(dx1.location.x, dx1.location.y);
            endShape(); }}}}}

 index = index + 1;
    beat ++;
  if ( beat == 24*45 ){
    exit();
  }
  saveFrame("data/screen/####.jpg");

}
          


//void keyPressed()
//{
//  flag=!flag;
//}





class Dots {
  PVector original;
  PVector location;
  PVector velocity;
  color c;
  int radius=400;
  Dots(PVector _PV, PVector _PO)
  {
    location = _PV;
    original = _PO;
    int j = (int)random(0, 5);
    if (j==0) c = color(#05CDE5);
    if (j==1) c = color(#FFB803);
    if (j==2) c = color(#FF035B);
    if (j==3) c = color(#3D3E3E);
    if (j==4) c = color(#D60FFF);
    float xt = random(-0.06, 0.06);
    float yt = random(-0.06, 0.06);
    velocity = new PVector(xt, yt );
  }

  void display()
  {
    fill(c);
    noStroke();
    ellipse(location.x, location.y, 5, 5);
    
   
   

   
   
   
    
  }
  void update()
  {                                 // -200,150
    if (dist(location.x, location.y, original.x, original.y)>radius) {
      velocity.mult(-1);
      location.add(velocity);
    }
    else {
      location.add(velocity);
    }
  }
  
}