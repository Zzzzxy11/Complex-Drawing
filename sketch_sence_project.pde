void setup(){
  size(600,600);
  background(255,255,255);
}

void draw(){
  background(255,255,255);
  chair(40,150,70,50);
  person(140,175,60);
  keyboard(210,221,50,20);

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
  rect(x,y,w,h);
}
