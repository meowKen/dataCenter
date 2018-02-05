int[] ver;
int tailleVer;
float distance;

void setup(){
  size(600,600);
  background(0);
  tailleVer = 500;
  distance = 0;
  ver = new int[tailleVer];
 for(int i =0; i<width; i++){
   float _X=map(i, 0, width, -10, 10);
   noStroke();
   fill(255);
   rect(map(_X, -10, 10, 0, width), map(cos(_X), -1, 1, 200, 400), 1,1);
 }
}

void draw(){
  background(0);
  for(int i =0; i<width; i++){
   float _X=map(i, 0, width, -10+distance, 10+distance);
   noStroke();
   fill(255);
   rect(map(_X, -10+distance, 10+distance, 0, width), map(cos(_X), -1, 1, 200, 400), 1,1);
   distance +=0.0001;
 }
}