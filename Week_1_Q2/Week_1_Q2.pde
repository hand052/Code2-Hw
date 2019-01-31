float i,j;

void setup(){
size(600,600);
}

void draw(){
  i=map(mouseX,0,600,0,255);
  j=map(mouseY,0,600,0,255);
background(i,j,255);
}
