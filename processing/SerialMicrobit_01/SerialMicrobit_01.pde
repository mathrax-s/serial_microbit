float mX;
float mY;
float mZ;


void setup() {
  size(600, 600);
  serialOpen();
  noStroke();
}

void draw() {
  background(0);

  mX = map(x, -1023, 1023, 0, width); 
  mY = map(y, -1023, 1023, 0, height); 
  mZ = map(z, -1023, 1023, 4,100);
  

  ellipse(mX,mY,mZ,mZ);
}