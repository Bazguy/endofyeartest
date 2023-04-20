void setup(){
 size(1000, 1000);
 colorMode(HSB);
 background(255);
 
  
}
float flagX = 200;
float flagY = 200;
float flagW = 500;
float flagH = 300;

int[] colorRect = {30, 70, 0, 150, 230, 100};
int[] colorTri = {60, 120, 200, 0};

int hue1;
int hue2;
int i = 0;
int t = 0;
int x;
int y;
float rndY;
float barChange;
void flag(int x){
  flagX = x;
  rndY = random(40, 600);
  int flagY = int(rndY);
  flagH = 240;
  barChange =40 ;
  flagW = 360;
  while(i < 6){
    fill(colorRect[hue1], 255, 255);
    rect(flagX, flagY, flagW, flagH);

    hue1++;
    flagY +=barChange ;
    flagH -= barChange;
    i++;
    

  }
        while(t < 4){
   fill(colorTri[hue2], 255, 255);
   triangle(x, rndY +y/2, x+200 -y, rndY+ 120, x, rndY+(240-y/2));
   y+= 40;
   hue2++;
   t++;
   
  }

 
  
}
int flags = 0;

void draw(){ //<>//
  while(flags < 10){
   float rnd = random(40, 800);
   int rnd2 = int(rnd);
   flag(rnd2);
   flags++;   
   t = 0;
   i = 0;
   hue1 = 0;
   hue2 = 0;
   y = 0;
  }

}
