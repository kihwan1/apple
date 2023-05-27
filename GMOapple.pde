class gmoapple extends apple{
  gmoapple(){super();}
  gmoapple(float a, float b, float c){super(a,b,c);}
  boolean health;
  void gmo(){coolor1=random(0,255);coolor2=random(0,255);coolor3=random(0,255);
  }
  void check(){health=(coolor1>200)&&(coolor2<100)&&(coolor3<100);
  if(health) println("it's good.");
  else println("it's bad.");
}
}
