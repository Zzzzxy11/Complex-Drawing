float angle;
float t;

Chair chair;
Person person;
Keyboard keyboard;
Desk desk;
Computer computer;
Plant plant;

void setup() {
  size(600, 600);
  ellipseMode(RADIUS);

  chair = new Chair(40, 150, 70, 50);
  person = new Person(140, 175, 60, 32);  
  keyboard = new Keyboard(210, 221, 45, 10);
  desk = new Desk(210, 231, 200, 15);
  computer = new Computer(300, 115, 10, 100);
  plant = new Plant(490, 250, 35, 10);     
}

void draw() {
  background(196, 190, 175);
  angle = map(noise(t), 0, 1, -20, 20);

  chair.draw();
  person.draw();
  keyboard.draw();
  desk.draw();
  computer.draw();
  plant.draw(angle);

  t += 0.01;
}

class Chair {
  int x, y, w, h;
  Chair(int x, int y, int w, int h) { this.x=x; this.y=y; this.w=w; this.h=h; }
  void draw() {
    fill(181, 124, 56);
    rect(x, y, w, h);
    rect(x + x/2, y + h, w/3, h*4);
    rect(x + x/2, y + h*3, x*3, x/2);
    rect(x*4, y + h*3, w/3, h*3 - h*4/4);
  }
}

class Person {
  int x, y, body, head;
  Person(int x, int y, int body, int head) { this.x=x; this.y=y; this.body=body; this.head=head; }
  void draw() {
    fill(255);
    circle(x, y, head);
    line(x, y + body/2, x, x*2);
    line(x, x*2, x*1.5, x*2);
    line(x*1.5, x*2, x*1.5, x*2.7);
    line(x*1.4, x*2, x*1.4, x*2.7);
    line(x, y + body/1.5, x*1.55, y + body/1.7);
    line(x*1.55, y + body/1.7, x*1.6, y + body/1.3);
    line(x, y + body/1.3, x*1.5, y + body/1.3);
  }
}

class Keyboard {
  int x, y, w, h;
  Keyboard(int x, int y, int w, int h) { this.x=x; this.y=y; this.w=w; this.h=h; }
  void draw() { fill(150); rect(x, y, w, h); }
}

class Desk {
  int x, y, w, h;
  Desk(int x, int y, int w, int h) { this.x=x; this.y=y; this.w=w; this.h=h; }
  void draw() {
    fill(181, 124, 56);
    rect(x, y, w, h);
    rect(220, 246, 15, 150);
    rect(385, 246, 15, 150);
  }
}

class Computer {
  int x, y, w, h;
  Computer(int x, int y, int w, int h) { this.x=x; this.y=y; this.w=w; this.h=h; }
  void draw() {
    fill(150);
    rect(307, 205, 5, 22);
    rect(x, y, w, h);
    rect(310, 125, 10, 80);
    quad(295, 227, 325, 227, 330, 231, 290, 231);
  }
}

class Plant {
  int stemX, stemY;
  float leafW, leafH;
  Plant(int stemX, int stemY, float leafW, float leafH) { this.stemX=stemX; this.stemY=stemY; this.leafW=leafW; this.leafH=leafH; }
  void draw(float angle) {
    fill(105, 46, 6);
    quad(435, 400, 555, 400, 525, 550, 465, 550);
    fill(34, 139, 34);
    rect(stemX, stemY, 10, 150);
    
    pushMatrix(); 
    translate(480, 270);
    rotate(radians(angle));     
    ellipse(0, 0, leafW, leafH); 
    popMatrix();

    pushMatrix();
    translate(510, 300); 
    rotate(radians(-angle));    
    ellipse(0, 0, leafW, leafH); 
    popMatrix();

    pushMatrix(); 
    translate(480, 330); 
    rotate(radians(angle-10));  
    ellipse(0, 0, leafW, leafH); 
    popMatrix();

    pushMatrix(); 
    translate(510, 360); 
    rotate(radians(-angle));    
    ellipse(0, 0, leafW, leafH); 
    popMatrix();
  }
}

