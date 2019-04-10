int cellSize = 10;
color colors[][];
int cols,rows;

void setup(){
  size(800,800);
  
  noStroke();
  
  cols = width/cellSize;
  rows = height/cellSize;
  
  colors= new color[cols][rows];
  
  for(int i = 0; i <cols;i++){
    for(int j = 0; j<rows; j++){
      colors[i][j] = color(0,0,random(100,255));
    }
  }
}  

void draw(){
  float inc=.09;
  float xoff=0.0;
  for(int i = 0; i <cols;i++){
      float yoff =0.0;
      
      xoff += inc;
    for(int j = 0; j<rows; j++){
      //colors[i][j] = color(0,0,random(100,255));
      
      yoff += inc;
      
      float noiseVal = noise(millis()*.001+xoff,yoff);
      if(noiseVal<.7){
      color fillColor = color(map(noiseVal,0,.6,0,150),
        map(noiseVal,0,.6,175,255),
        map(noiseVal,0,.6,175,255));
        colors[i][j]=fillColor;
      }
      if(noiseVal>=.5){
        color fillColor = color(map(noiseVal,0.7,1,153,255),
        map(noiseVal,0.7,1,200,255),
        map(noiseVal,0.7,1,100,255));
        colors[i][j]=fillColor;
      }
      //colors[i][j]=fillColor;
      fill(colors[i][j]);
      rect(i*cellSize,j*cellSize,cellSize,cellSize);
    }
  }
    //for(int i = 0; i <cols;i++){
    //for(int j = 0; j<rows; j++){
    //  fill(colors[i][j]);
    //  rect(i*cellSize,j*cellSize,cellSize,cellSize);
    //}
  //}
}
