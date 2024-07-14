
void ogvalores() {
  //colores
  cr= color(255, 0, 0);
  ca= color(56, 78, 216);
  cv= color(13, 228, 94);

  maxDia = 2;
  maxDia2 = 12; // Diametro circulos
  espacio = 15; //espacio entre circulos
  // Centro de la imagen
  centrox = 600;
  centroy = 200;
}

void circulo() {

  fill(random(255), random(255), random(255));
  circle(random(400, 800)+25, random(400), 15);
}




void circulogrande() {
  for (int x1 = 407; x1 < width; x1 += espacio) {
    for (int y1 = 7; y1 < height; y1 += espacio) {
      float distCentro = dist(x1, y1, centrox, centroy);
      float diametro = map(distCentro, 0, dist(0, 0, centrox, centroy), maxDia, 25);
      fill(ca);
      ellipse(x1, y1, diametro, diametro);
    }
  }
}
void circulochico() {
  for (int x2 = 415; x2 < width; x2 += espacio) {
    for (int y2 = 14; y2 < height; y2 += espacio) {
      float distCentro = dist(x2, y2, centrox, centroy);
      float diametro2 = map(distCentro, 0, dist(0, 0, centrox, centroy), maxDia2, -8);
      fill(cv);
      ellipse(x2, y2, diametro2, diametro2);
    }
  }
}
