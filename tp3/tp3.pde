// Inchazú Mateo, Comision 5
PImage art;


void setup() {
  size(800, 400);
  art= loadImage("art.png");
  background(255, 0, 0);
  image(art, 0, 0, 400, 400);
}

void draw(){
  
  float maxDia = 13;
  float espacio = 15;
  
  //""centro imagen""
  float centrox = 600;
  float centroy = 200;
  
  for (int x1= 407; x1 < width; x1+= espacio) {
    for ( int y1= 7; y1 < height; y1+= espacio) {
      
      float distCentro = dist(x1,y1,centrox,centroy);
      
      float diametro =  map(distCentro, 0, dist(0, 0, centrox, centroy), maxDia, 20);

      fill(0,0,255);

      ellipse(x1, y1, diametro, diametro);
    }
  }
  
  for (int x2= 415; x2 < width; x2+= espacio) {
    for ( int y2= 14; y2 < height; y2+= espacio) {
      fill(0,255,0);
      float diametro2= 5;
      ellipse(x2, y2, diametro2, diametro2);
       
        
      }
        
      }
      
      
    }
  
  




void mouseClicked() {

  println("x es:", mouseX, "y es:", mouseY);
}
