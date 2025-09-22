float angle;
float t;

void setup(){
  size(600,600);
  background(255,255,255);
  angle = noise(t);
}

void draw(){
  background(196,190,175);
  angle = map(noise(t),0,1,-20,20);
  chair(40,150,70,50);
  person(140,175,60);
  keyboard(210,221,45,10);
  desk(210,231,200,15);
  computer(300,115,10,100);
  plant();
  

}

void chair(int x, int y, int w, int h){
  fill(181, 124, 56);
  // top of the chair
  rect(x,y,w,h);
  //body of the chair
  rect(x+x/2,y+h,w/3,h*4);
  rect(x+x/2,y+h*3,x*3,x/2);
  rect(x*4,y+h*3,w/3,h*3-h*4/4);
}

void person(int x, int y, int r){
  fill(255,255,255);
  //head
  circle(x,y,r);
  //body
  line(x,y+r/2,x,x*2);
  line(x,x*2,x*1.5,x*2);
  //legs
  line(x*1.5,x*2,x*1.5,x*2.7);
  line(x*1.4,x*2,x*1.4,x*2.7);
  //arms
  line(x,y+r/1.5,x*1.55,y+r/1.7);
  line(x*1.55,y+r/1.7,x*1.6,y+r/1.3);
  line(x,y+r/1.3,x*1.5,y+r/1.3);

}

void keyboard(int x, int y, int w, int h){
  fill(150,150,150);
  rect(x,y,w,h);
}
//desk
void desk(int x, int y, int w, int h){
  fill(181, 124, 56);
  rect(x,y,w,h);
  rect(220,246,15,150);
  rect(385,246,15,150);
}
// computer
void computer(int x, int y, int w, int h){
  fill(150,150,150);
  rect(307,205,5,22);
  rect(x,y,w,h);
  rect(310,125,10,80);
  quad(295,227,325,227,330,231,290,231);
}
//plant
 void plant(){
  //pot
  fill(105, 46, 6);
  quad(435,400,555,400,525,550,465,550);
  //plant

  fill(34,139,34);
  rect(490,250,10,150);          

  pushMatrix();
  translate(480,270);
  rotate(radians(angle));        
  ellipse(0,0,50,15);
  popMatrix();
  
  pushMatrix();
  translate(510,300);
  rotate(radians(-angle));    
  ellipse(0,0,50,15);
  popMatrix();
  
  pushMatrix();
  translate(480,330);
  rotate(radians(angle-10));
  ellipse(0,0,50,15);
  popMatrix();
  
  pushMatrix();
  translate(510,360);
  rotate(radians(-angle));
  ellipse(0,0,50,15);
  popMatrix();
  
  t = t + 0.01;
}
