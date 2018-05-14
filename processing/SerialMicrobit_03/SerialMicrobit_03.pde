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

  mX = map(x, -1023, 1023, 0, 255); 
  mY = map(y, -1023, 1023, 0, 255); 
  mZ = map(z, -1023, 1023, 0, 255);

  aveX = aveX * (31.0/32.0) + mX/32.0;
  aveY = aveY * (31.0/32.0) + mY/32.0;
  aveZ = aveZ * (31.0/32.0) + mZ/32.0;

  fill(aveX, aveY, aveZ);
  ellipse(width/2, height/2, 400, 400);
}