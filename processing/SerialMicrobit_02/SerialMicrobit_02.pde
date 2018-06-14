float mX;
float mY;
float mZ;

float aveX;
float aveY;
float aveZ;

float[] bright = new float[10];
int i;

void setup() {
  size(600, 600);
  serialOpen();
  for(i=0; i<10; i++){
    bright[i] = 0;
  }
  noStroke();
  colorMode(HSB);
}

void draw() {
  background(30,10,255);
  
  for(i=0; i<10; i++){
    bright[i]*=0.9;
    fill(i*10,100,255, 255);
    rect(60*i, 600*bright[i], 60, 600*bright[i]);
  }
  

  mX = map(x, -1023, 1023, 0, width); 
  mY = map(y, -1023, 1023, 0, height); 
  mZ = map(z, -1023, 1023, 4,100);
  
  aveX = aveX * (31.0/32.0) + mX/32.0;
  aveY = aveY * (31.0/32.0) + mY/32.0;
  aveZ = aveZ * (31.0/32.0) + mZ/32.0;

  ellipse(aveX,aveY,aveZ,aveZ);
}


void keyPressed(){
  if(key == 'a'){
    bright[0] = 1.0;
  }
  if(key == 's'){
    bright[1] = 1.0;
  }
  if(key == 'd'){
    bright[2] = 1.0;
  }
  if(key == 'f'){
    bright[3] = 1.0;
  }
  if(key == 'g'){
    bright[4] = 1.0;
  }
  if(key == 'h'){
    bright[5] = 1.0;
  }
  if(key == 'j'){
    bright[6] = 1.0;
  }
  if(key == 'k'){
    bright[7] = 1.0;
  }
  if(key == 'l'){
    bright[8] = 1.0;
  }
  if(key == ';'){
    bright[9] = 1.0;
  }
}