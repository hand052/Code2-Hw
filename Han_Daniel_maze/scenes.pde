void scene0(){
  w1.walls();
  w2.walls();
}

void scene1(){
    w3.walls();
    w4.walls();
    w5.walls();
    w6.walls();
    w7.walls();
    w8.walls();
    w9.walls();
    w10.walls();
    w11.walls();
    w12.walls();
    w13.walls();
    w14.walls();
    w15.walls();
    w16.walls();
    w17.walls();
    w18.walls();
    w19.walls();
    w20.walls();    
    
    
    g9.walls();
    
    if(got1==false){
    g1.walls();
   k1.display();
    }
   if(x>k1.xPos-35&&x<k1.xPos+35&&y>k1.yPos-35&&y<k1.yPos+35){
   got1=true;
   }
}

void scene2(){
  b1.walls();
  b2.walls();
  b3.walls();
  b4.walls();
  b5.walls();
  b6.walls();
  b7.walls();
  b8.walls();
  b9.walls();
  b10.walls();
  b11.walls();
  b12.walls();
  b13.walls();
   if(got2==false){
    g2.walls();
    k2.display();
   }if(x>k2.xPos-35&&x<k2.xPos+35&&y>k2.yPos-35&&y<k2.yPos+35){
   got2=true;
   }
}

void scene3(){
 c1.walls();
 c2.walls();
 c3.walls();
 c4.walls();
 c5.walls();
 c6.walls();
 c7.walls();
 c8.walls();
 c9.walls();
 c10.walls();
 c11.walls();
 c12.walls();
 c13.walls();
 c14.walls();
 c15.walls();
    if(got3==false){
    g3.walls();
    k3.display();
   }if(x>k3.xPos-35&&x<k3.xPos+35&&y>k3.yPos-35&&y<k3.yPos+35){
   got3=true;
   }
}

void scene4(){
  d1.walls();
  d2.walls();
  d3.walls();
  d4.walls();
  d5.walls();
  d6.walls();
  d7.walls();
  d8.walls();
  d9.walls();
  d10.walls();
  d11.walls();
  d12.walls();
    if(got4==false){
    g4.walls();
    k4.display();
   }if(x>k4.xPos-35&&x<k4.xPos+35&&y>k4.yPos-35&&y<k4.yPos+35){
   got4=true;
   }
}

void scene5(){
  e1.walls();
  e2.walls();
  e3.walls();
  e4.walls();
  e5.walls();
  e6.walls();
  e7.walls();
  e8.walls();
  e9.walls();
  e10.walls();
  e11.walls();
  e12.walls();
  e13.walls();
  e14.walls();
  e15.walls();
  e16.walls();
    if(got5==false){
    g5.walls();
    k5.display();
   }if(x>k5.xPos-35&&x<k5.xPos+35&&y>k5.yPos-35&&y<k5.yPos+35){
   got5=true;
   }
}

void scene6(){
  f1.walls();
  f2.walls();
  f3.walls();
  f4.walls();
  f5.walls();
  f6.walls();
  f7.walls();
  f8.walls();
  f9.walls();
  f10.walls();
  f11.walls();
  f12.walls();
  f13.walls();
  f14.walls();
    if(got6==false){
    g6.walls();
    k6.display();
   }if(x>k6.xPos-35&&x<k6.xPos+35&&y>k6.yPos-35&&y<k6.yPos+35){
   got6=true;
   }
}

void scene7(){
  h1.walls();
  h2.walls();
  h3.walls();
  h4.walls();
  h5.walls();
  h6.walls();
  h7.walls();
  h8.walls();
  h9.walls();
  h10.walls();
  h11.walls();
  h12.walls();
  h13.walls();
  h14.walls();
    if(got7==false){
    g7.walls();
    k7.display();
   }if(x>k7.xPos-35&&x<k7.xPos+35&&y>k7.yPos-35&&y<k7.yPos+35){
   got7=true;
   }
}

void scene8(){
  i1.walls();
  i2.walls();
  i3.walls();
  i4.walls();
  i5.walls();
  i6.walls();
  i7.walls();
  i8.walls();
  i9.walls();
  i10.walls();
  i11.walls();
  i12.walls();
if(got8==false){
    g8.walls();
    k8.display();
   }if(x>k8.xPos-35&&x<k8.xPos+35&&y>k8.yPos-35&&y<k8.yPos+35){
   got8=true;
   }
}

void scene9(){
  w3.walls();
  w4.walls();
  w5.walls();
  w6.walls();
  w7.walls();
  w8.walls();
  w9.walls();
  w10.walls();
  w11.walls();
  w12.walls();
  w13.walls();
  w14.walls();
  w15.walls();
  w16.walls();
  w17.walls();
  w18.walls();
  w19.walls();
  w20.walls();    
  w21.walls();
}

void scene10(){
  fill(255,255,0);
  textSize(40);
  textAlign(CENTER,BOTTOM);
  text("You Win!!!",width/2,height/4);
  
  w1.walls();
  w2.walls();
}
