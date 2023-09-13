void setup(){
 size(500, 500); 
 
}

void draw(){
 boolean shift = true;
  for (int y = 540; y > -40; y-=22) {
    for (int x = -40; x < 540; x+=30){
      if(shift == true)
         scale(x - 15, y);
      else
         scale(x,y + 1);
    }
    if(shift == true)
     shift = false;
    else
    shift = true;  
}
  }


void scale(int x, int y){
float r = 255;  
noStroke();
if(x%2 == 0){
   for(int j = 0; j < 60; j+=10){
     if(Math.random() < .5)
   fill(r, 0, (int)(Math.random()*255) - 155);
   else
    fill(r, 0, 0, (int)(Math.random()*200) + 55);
beginShape();
curveVertex(x+50,y+10);

curveVertex(x+51, y+20+j);
curveVertex(x+67, y+30);
curveVertex(x+50, y+80);
curveVertex(x+35, y+30);
curveVertex(x+49, y+20+j);

curveVertex(x+50, y+10);
vertex(x+50, y+10);

endShape();
r-=30;
  }
 } else {
  for(int j = 0; j < 60; j+=10){
   fill((int)(Math.random()*255), 0, 0);
beginShape();
curveVertex(x+50,y+10);

curveVertex(x+51, y+20+j);
curveVertex(x+67, y+30);
curveVertex(x+50, y+80);
curveVertex(x+35, y+30);
curveVertex(x+49, y+20+j);

curveVertex(x+50, y+10);
vertex(x+50, y+10);

endShape();
 }
}
}
