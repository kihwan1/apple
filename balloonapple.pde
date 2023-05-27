class balloonapple extends apple{
  balloonapple(){super(); k=10;}
  balloonapple(int a){k=a;}
  
  int k;
  void blow(){d+=k; if(d>400) k=-k; if (d<100) k=-k;}
  }
