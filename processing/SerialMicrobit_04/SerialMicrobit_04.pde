float[] bright = new float[10];
int i;

void setup(){
  size(600,600);  
  for(i=0; i<10; i++){
    bright[i] = 1.0;
  }
  noStroke();
  colorMode(HSB);
  serialOpen();
}


void draw(){
  background(30,10,255);
  
  for(i=0; i<10; i++){
    bright[i]*=0.99;
    fill(i*10,100,255, 255*bright[i]);
    rect(60*i, 0, 60, 600);
  }
  sensorCheck();
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


void sensorCheck(){
  float xx = map(x, -1000,1000, 0,9);
  float yy = map(y, -1000,1000, 0,9);
  float zz = map(z, -1000,1000, 0,9);
  
  int myX = (int)constrain(xx,0,9);
  int myY = (int)constrain(yy,0,9);
  int myZ = (int)constrain(zz,0,9);

  if(myY > 5){
      bright[myX]=1.0;
  }else{
      bright[myX]=0;
  }
  
  //DEBUG
  textSize(24);
  textAlign(CENTER,CENTER);
  fill(255);
  text(myX,100,400);
  text(myY,300,400);
  text(myZ,500,400);
  
}