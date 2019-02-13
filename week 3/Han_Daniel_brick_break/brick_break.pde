int cols, rows; 
int w = 50;
int h = 25; 

int sc, ti, lf,at;

Ball b; 
Paddle p; 
Bricks myBricks [][]; //setting up a 2D grid to store instances of our bricks

void setup(){
  size(700, 500); 
  cols = width/w; 
  rows = int((height*.5)/h); 
  
  noStroke(); 
  
  textSize(20);
  

  myBricks = new Bricks[cols][rows]; 
  
  b = new Ball(width/2, height*.75, random(3,5), random(-5,-4)); 
  p = new Paddle(); 
  
    ti=60;
    at=60;
    lf=3;
  
  for(int i = 0; i<cols; i++){
    for(int j = 0; j<rows; j++){
      myBricks[i][j] = new Bricks(i*w+5, j*h+5, w-10, h-10); 
    }
  }
}



void draw(){
  background(0); 
  
  //Score
  textAlign(RIGHT, TOP);
  text("Score: " + sc,150, 460);
  
  //Timer
  textAlign(CENTER, TOP);
  text("Time: " + at,350, 460);
  
  //Lives
  textAlign(LEFT, TOP);
  text("Lives: " + lf,600, 460);
  
  //countdown
  ti=ti-1;
  if(ti==0){
    ti=60;
  at=at-1;
  }
  
  //stop ball
  if(at==0||lf==0){
  b.vel.x=0;
  b.vel.y=0;
  }
  
  
  b.move(); 
  b.display();
  
  p.display(); 
  p.reset(); 
  
  //making sure our ball stays within the boundaries of our screen 
  if(b.pos.x<= b.size/2 || b.pos.x>= width-b.size/2){
    b.bounceSide(); 
  }
  if(b.pos.y<=b.size/2 || b.pos.y>= height-b.size/2){
    b.bounceTop(); 
  }
  
  if(b.pos.y>= height-b.size/2){
    lf=lf-1;; 
  }
  
  //ball bouncing off of the paddle 
  //FIX THIS PADDLE COLLISION IS NOT WORKING
  if(b.pos.x >= p.x-p.w/2 && b.pos.x <= p.x+w/2 && b.pos.y>=(p.y-b.size/2+p.h/2)){ 
    b.paddleBounce(); 
  }
  
  //breaking bricks 
  for(int i = 0; i<cols; i++){
    for(int j = 0; j<rows; j++){
      float bl = map(i, 0, cols, 100, 255); 
      float g = map(j, 0, rows, 150, 255); 
      myBricks[i][j].display(color(50, g, bl));  
      
            // checking to see if ball is within the boundaries of our bricks 
      if(b.pos.x<= (myBricks[i][j].x + myBricks[i][j].w/2) && b.pos.x>= (myBricks[i][j].x - myBricks[i][j].w/2) 
        && b.pos.y<= (myBricks[i][j].y + myBricks[i][j].h/2) && b.pos.y>= (myBricks[i][j].y - myBricks[i][j].h/2)){
         myBricks[i][j].o = 0;  //just changing the opacity here but you can figure out how to remove the object using an array list 
         sc=sc+100;
      }
    }
  }
  
  if(keyPressed){
    if(key==CODED){
      if(keyCode == LEFT){
        p.moveLeft();
      }
      if(keyCode == RIGHT){
        p.moveRight(); 
      }
    }
  }
}

void keyPressed(){

}
