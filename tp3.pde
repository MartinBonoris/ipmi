// Martín Bonoris
// Tp3 comision 1
//https://youtu.be/G7k_y1OYxBE?feature=shared
PImage img;
int cols = 10; 
int fila = 10; 
int tamcel; 
int ancho = 800;
int alto = 400;

color[][] cellColors;
color[][] shapeColors;

void setup() {
  size(800, 400);
  img = loadImage("imgtp3.jpg");
  tamcel = min((ancho / 2) / cols, alto / fila); 
  noStroke();
  
 
  cellColors = new color[cols][fila];
  shapeColors = new color[cols][fila];
  
  // Asignar colores aleatorios iniciales
  ColorRandom();
  
}

void draw() {
  background(255); 
  
 

  for (int B = 0; B < fila; B++) {
    for (int A = 0; A < cols; A++) {
      int x = ancho / 2 + A * tamcel;
      int y = B * tamcel;
      
   
      fill(cellColors[A][B]);
      rect(x, y, tamcel, tamcel);

     
      float figuraX = map(mouseX, ancho / 2, ancho, x, x + tamcel);
      float figuraY = map(mouseY, 0, alto, y, y + tamcel);
      
      fill(shapeColors[A][B]);

      if (B < 2) {
        // Primeras dos filas: 10 círculos
        ellipse(figuraX, figuraY, tamcel * 0.8, tamcel * 0.8);
      } else if (B >= 2 && B < 5) {
        // Filas 3, 4 y 5: 2 círculos, 6 cuadrados, 2 círculos
        if (A < 2 || A >= 8) {
          ellipse(figuraX, figuraY, tamcel * 0.8, tamcel * 0.8);
        } else {
          rect(figuraX - tamcel * 0.4, figuraY - tamcel * 0.4, tamcel * 0.8, tamcel * 0.8);
        }
      } else if (B >= 5 && B < 8) {
        // Filas 6, 7 y 8: 2 cuadrados, 6 círculos, 2 cuadrados
        if (A < 2 || A >= 8) {
          rect(figuraX - tamcel * 0.4, figuraY - tamcel * 0.4, tamcel * 0.8, tamcel * 0.8);
        } else {
          ellipse(figuraX, figuraY, tamcel * 0.8, tamcel * 0.8);
        }
      } else {
        // Últimas dos filas: 10 cuadrados
        rect(figuraX - tamcel * 0.4, figuraY - tamcel * 0.4, tamcel * 0.8, tamcel * 0.8);
      }
    }
  }
   image(img, 0, 0);
}

void ColorRandom() {
  for (int B = 0; B < fila; B++) {
    for (int A = 0; A < cols; A++) {
      cellColors[A][B] = color(random(255), random(255), random(255));
      shapeColors[A][B] = color(random(255), random(255), random(255));
    }
  }
}

void mousePressed() {
  // Asignar colores aleatorios cuando se hace clic
  ColorRandom();
}
