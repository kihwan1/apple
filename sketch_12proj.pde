apple cc;
gmoapple [] aa;
balloonapple [] bb;

choonsik a;
choonsik_glasses [] b;
choonsik_necktie [] c;

lion [] aaa;
lionking [] bbb;
lionqueen [] ccc;
void setup() {
 size(2000,1000);
  cc = new apple(1000,500,700);
  aa = new gmoapple[2]; //class 1
  bb = new balloonapple[2];
  for (int i=0; i<2; i++) {
    aa[i] = new gmoapple();
    bb[i] = new balloonapple();
    aa[i].gmo();
  aa[i].check();
  }
  
  a = new choonsik(1000,200,300); // class 2
  b = new choonsik_glasses[2];
  b[0] = new choonsik_glasses(400,500,300);
  b[1] = new choonsik_glasses(700,500,300);
  c = new choonsik_necktie[2];
  c[0] = new choonsik_necktie(1300,500,300);
  c[1] = new choonsik_necktie(1600,500,300);
  
  aaa= new lion[2];
  bbb= new lionking[2];
  ccc= new lionqueen[2];
  aaa[0] = new lion(450,150,200); //class 3
  bbb[0] = new lionking(150,150,200);
  ccc[0] = new lionqueen(750,150,200);
  
  aaa[1] = new lion(1550,150,200);
  bbb[1] = new lionking(1250,150,200);
  ccc[1] = new lionqueen(1850,150,200);
}
void draw(){
  background(0,255,255); 
  cc.Life();
  for (int i=0;i<2;i++){
  aa[i].Life();
  }
  for(int k=0;k<2;k++){
    bb[k].Life();
    bb[k].blow();
  }
    a.drawFace();
    for (int i=0; i<2; i++){
    c[i].drawnecktie();
}
  for (int i=0; i<2; i++){
    b[i].drawglasses();
  }
    for (int i=0; i<2; i++){
  aaa[i].drawface();
  bbb[i].drawk();
  ccc[i].drawq();
  }
}
