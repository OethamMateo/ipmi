//Mateo Agustín Inchazú DNI:43700371 (91427/6)
//Comisión 5
int crono, y2, y3;
float tamtext;
PImage titulo;
PImage p2;
PImage p3;
PFont fuente;



void setup() {
  size(640, 480);
  titulo= loadImage("titulo.jpg");
  p2= loadImage("p2.jpg");
  p3= loadImage("p3.jpg");
  fuente = loadFont("fuente-48.vlw");
  y2=100;
  y3= 480;
  tamtext = 2;
}
void draw() {
  crono = crono + 1;
  background(255);

  if (crono<160) {
    p1();
  } else if (crono>160 && crono<320) {
    background(255, 0, 0);
    textSize(15);
    p2();
  } else if (crono>320 && crono<480) {
    background(0, 255, 0);

    p3();
  } else if (crono>480) {

    p4();
  }

  push();
  textSize(20);
  fill(255);



  // tiempo
  rect(0, 470, crono, 10);
  pop();
}
void mousePressed() {

  if (crono>480&&mouseX>0&&mouseX<200&&mouseY>0&&mouseY<100) {
    crono = 0;
    tamtext = 1;
    y2=100;
    y3= 480;
  }
}
