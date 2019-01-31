String myStrings[]={"hi", "hello", "hey", "how's it going"};
float xPos[]=new float[4];

int size=100;

void setup() {
  size(600,600);

  float spacing = width/size;

  for (int i =0; i<4; i++) {
    xPos[i] = i* spacing + size*.75;
  }
}

void draw() {
  background(255);
  int index=0;

  for (int i=0; i<4; i++) {
    ellipse(xPos[i], 100, size, size);

    if (dist(mouseX, mouseY, xPos[i], 100)<=size&&mousePressed) {
      index=i;
      println(i);
      fill(255);
    } else {
      fill(0);
    }
  }
  fill(0);
  text(myStrings[index], width/2-textWidth(myStrings[index]), height/2);
}
