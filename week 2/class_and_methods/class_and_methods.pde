float x,y;
float sp;
float dir;

void setup(){
size (500,500);
dir=1;
y=50;


}

void draw(){

background(255);
sp =5;
y=y+dir*sp;
if(y>height-20||y < 10)
{
  dir= -dir;
}


 ball();


}

void mouseClicked(){

}
 

void ball(){
ellipse(200,y,20,20);
}
