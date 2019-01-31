float c1, c2, c3, c4;

void setup(){
size(600,600);
textSize(20);
textAlign(CENTER);
}

void draw(){
background(255);
c1=dist(80,100,mouseX,mouseY);
c2=dist(230,100,mouseX,mouseY);
c3=dist(380,100,mouseX,mouseY);
c4=dist(530,100,mouseX,mouseY);
fill(0);
ellipse(80,100,100,100);
ellipse(230,100,100,100);
ellipse(380,100,100,100);
ellipse(530,100,100,100);
if(mousePressed && c1<= 50){
  text("Hello", 300,400);
fill(255);
ellipse(80,100,100,100);
}
if(mousePressed && c2<= 50){
  text("Hi there", 300,400);
fill(255);
ellipse(230,100,100,100);
}
if(mousePressed && c3<= 50){
  text("How's it going", 300,400);
fill(255);
ellipse(380,100,100,100);
}
if(mousePressed && c4<= 50){
  text("Greetings", 300,400);
fill(255);
ellipse(530,100,100,100);
}
}
