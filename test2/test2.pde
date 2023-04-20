void setup(){
 size(1000, 1000);
 colorMode(HSB);
 background(255);
 
  
}
float flagX = 200;
float flagY = 200;
float flagW = 500;
float flagH = 300;
int hue1 = 100;
int hue2 = 0;
int i = 0;
int t = 0;
int x;
int y;
float barChange;
void flag(int x){
  flagX = x;
  flagY = x;
  flagH = x*2;
  barChange = (x*2)/6;
  flagW = x*3;
  while(i < 6){
    fill(hue1, 255, 255);
    rect(flagX, flagY, flagW, flagH);

    hue1 += 30;
    flagY +=barChange ;
    flagH -= barChange;
    i++;
    

  }
        while(t < 4){
   fill(hue2, 255, 255);
   triangle(x, x + y, x*2 -y/2, x*2, x, x + (x*2)-y);
   y+= (x/4);
   hue2+= 50;
   t++;
  }
  
  
}
int flags;

void draw(){
  while(flags < 10){
  float rnd = random(40, 80);
  int rnd2 = int(rnd);
  flag(rnd2);
  flags++;
  }

}
