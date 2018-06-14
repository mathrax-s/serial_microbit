float mX;
float mY;
float mZ;

float aveX;
float aveY;
float aveZ;


void setup() {
  size(600, 600);
  serialOpen();
  noStroke();
}

void draw() {
  background(0);

  mX = map(x, 0, 255, 0, 255); 
  mY = map(y, 0, 255, 0, 255); 
  mZ = map(z, 0, 255, 0, 255);

  aveX = aveX * (3.0/4.0) + mX/4.0;
  aveY = aveY * (3.0/4.0) + mY/4.0;
  aveZ = aveZ * (3.0/4.0) + mZ/4.0;

  fill(aveX, aveY, aveZ);
  ellipse(width/2, height/2, 400, 400);
}