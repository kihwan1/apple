class apple {
  apple() {
    x = random(0,width);
    y = random(0,height);
    d = random(100,200);
    vx = random(-3,3); vy = random(-2,2);
  };
  apple(float p, float q, float r) {
    x = p;     y = q;     d = r;
    vx = random(-3,3); vy = random(-2,2);
  }
  float x, y, d, vx, vy, coolor1=230,coolor2=0,coolor3=0;
  void collide(apple b){
    float dd;
    dd = sqrt((x-b.x)*(x-b.x) + (y-b.y)*(y-b.y));
    if(dd < (d+b.d)/4){
      vx = -vx;
      b.vx=-b.vx;
      vy=-vy;
      b.vy=-b.vy;
    }
  }


  void act(){
    x += vx;  y += vy; //mouseX, mouseY
     if(x>width) x=0;   
    if(x<0) x=width;
    if(y>height) y=0;
    if(y<0) y = height;
  }
  void Life() {
  fill(coolor1,coolor2,coolor3);
  circle(x,y,d/3);
  fill(150,0,0);
  arc(x+d/15,y-d/8,d/4,d/9,7*PI/3,23*PI/9);
  fill(0,150,0);
  curve(x-d/2,y-d/5,x+d/15,y-d/12,x+d/6,y-d/6,x+d/4,y-d/4);
}
}
