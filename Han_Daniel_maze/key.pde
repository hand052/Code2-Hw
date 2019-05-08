 class gKey{
  float xPos;
  float yPos;
  boolean got;

  gKey(float tempX, float tempY) {
    xPos=tempX;
    yPos=tempY;
    got=false;
  }
  void display(){
  fill(255,255,0);
  
  
  if(got==false){
  ellipse(xPos,yPos, 20,20);
 
    //if(x>xPos-35&&x<xPos+35&&y>yPos-35&&y<yPos+35){
    //got=true;
        //}
      }
    }
  }
