void setup(){
 size(1000, 1000);
 colorMode(HSB);
 background(255);
 
  
}
float flagX = 200;
float flagY = 200;
float flagW = 500;
float flagH = 300;
int hue = 100;
int i = 0;
int t = 0;

void flag(){
  while(i < 6){
    fill(hue, 255, 255);
    rect(flagX, flagY, flagW, flagH);
    hue += 20;
    flagY += 50;
    flagH -= 50;
    i++;
    
  while(t < 4){
    
  }
  }
  
  
}


void draw(){
  flag();
}
