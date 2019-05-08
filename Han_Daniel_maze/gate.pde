class gate{
  float xPos;
  float yPos;
  float xSize;
  float ySize;


  gate(float tempX, float tempY, float tempSX, float tempSY) {
    xPos=tempX;
    yPos=tempY;
    xSize=tempSX;
    ySize=tempSY;
   
  }
  void walls() {
    fill(255,255,0);
    rectMode(CORNER);
 
    rect(xPos, yPos, xSize, ySize);
   
  
    //wall block

    //right side
    if ((x<(xPos+xSize)+radius && (x>(xPos+xSize-10))) &&  ( y>yPos && y < yPos+ySize ) ) {
      x= (xPos+xSize)+radius;
    }
    //left side
    else if ((x>xPos-radius && (x<(xPos+10)) ) && ( y>yPos && y < yPos+ySize)) {
      x= xPos-radius;
    }
    //top side
    else if ((y>yPos-radius && (y<yPos+10))&& (x>xPos && x<xPos+xSize)) {
      y=yPos-radius;
    } 
    //bottom side
    else if ((y<(yPos+ySize)+radius && (y>(yPos+ySize-10)))&& (x>xPos && x<xPos+xSize)) {
      y=(yPos+ySize)+radius;
      
      }
    }
  }
