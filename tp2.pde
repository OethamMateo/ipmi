//Mateo Agustín Inchazú DNI:43700371 (91427/6)
//Comisión 5
int crono ;
PImage titulo;
PImage p2;
PImage p3;
PFont fuente;


int p2x;
int p3x;

String texto2= "Harry Potter y la piedra filosofal,\nes el primer libro de la serie \nliteraria Harry Potter, \nnescrito por la autora británica \nJ. K. Rowling en 1997, \nque supuso además el debut de Rowling como \nescritora profesional.";


void setup() {
  size(640, 480);
  titulo= loadImage("titulo.jpg");
  p2= loadImage("p2.jpg");
  p3= loadImage("p3.jpg");
  fuente = loadFont("fuente-48.vlw");
  p2x=640;
}
void draw() {
  crono = crono + 1;
  fill(0);
  textSize(12);
//PANTALLA 1  
  if (crono < 160) {
   image(titulo,0,0,640,480);
   
   
   textFont(fuente);
   push();
   textSize(32);
   textAlign(CENTER, CENTER);
   fill(0);
   text("¡Que se haga la magia!", width/2, 400);
   pop();
   
   
  } 
  
  //PANTALLA 2
  else if (crono == 160) {
    background(255,255,255);
    
    text(texto2, p2x, height/2);
    p2x--;
    
    

   image(p2,0,0,325,480);
    
  } 
  //PANTALLA 3
  else if( crono== 320){
  image(p3,0,0,630,480);
  
  text("En la historia, Harry Potter \ndescubre que es un mago \ne ira a un colegio de magia \ndonde vivira aventuras",300,240);
  
  }
  
  //PANTALLA4
  else if( crono== 480){
  background(255, 255, 255);
  
  text("Eso es todo amigos",CENTER,240);
  }

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  fill(255);
  rect(0, 0, 50, 20); 
  // Dibujar el valor de crono
  fill(0);
  text(crono, 10, 10);
  
  
  // Dibujar el rectángulo
  rect(0, 470, crono, 10);
}
