void setup(){
 size(1000, 1000);
 colorMode(HSB);
 background(255);
 
  
}
float c;
float s;
int[] x ={30, 80, 440, 170, 250, 200, 300, 360, 490, 920};
int[] w ={400, 300, 100, 550, 230, 480, 970, 600, 180, 340};

int h;
int z;


float triX;
float flagX;
float flagY;
float flagW;
float flagH;

int[] colorRect = {30, 70, 0, 150, 230, 100};
int[] colorTri = {60, 120, 200, 0};

int hue1;
int hue2;
int i = 0;
int t = 0;
int y;
float rndY;
float barChange;
void flag(){
  if((c+x[z]) > (1000 + w[z])){
    c = c - 1000;
  };
  flagX = x[z]+c;
  rndY = x[z] + 90;
  int flagY = x[z] + 90;
  flagH = w[z]/2 * sin(s);
  h = w[z]/2;
  barChange =(flagH)/6;
  flagW = w[z] * sin(s);
  while(i < 6){
    fill(colorRect[hue1], 255, 255);
    rect(flagX, flagY, flagW, flagH);

    hue1++;
    flagY +=barChange ;
    flagH -= barChange;
    i++;
    

  }
  triX = x[z]+c;
        while(t < 4){
   fill(colorTri[hue2], 255, 255);
   triangle(triX, rndY +y/2, triX+h -y, rndY+ h/2, triX, (rndY+(h-y/2)));
   y+= 40;
   hue2++;
   t++;
   
  }
  fill(0, 0, 255);
 circle(triX+h -y, rndY+ h/2, flagW/6);
 
  
}
int flags = 0;

void draw(){ //<>//
  while(z < 10){
   
   flag();
 
   z++;   
   t = 0;
   i = 0;
   hue1 = 0;
   hue2 = 0;
   y = 0;
  }

     c+=0.5;
     s+=0.01;
  z =0;
 

  
}
