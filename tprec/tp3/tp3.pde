// Martín Bonoris
// Recuperatorio TP3 comisión 1
// https://youtu.be/MikjrzlRU2Q

PImage img;
int cols = 10;
int fila = 10;
int tamcel = 40;
int derecha = 400;
color[][] colCeldas = new color[cols][fila]; // arreglo para almacenar los colores de las celdas
color[][] figuras = new color[cols][fila]; // arreglo para almacenar los colores de las figuras
color blanco;
color negro;

void setup() {
  img = loadImage("imagentp3.jpg");

  size(800, 400);
  noStroke();
  blanco = color(255); 
  negro = color(0);
  for (int B = 0; B < fila; B++) { // Inicializamos las celdas 
    for (int A = 0; A < cols; A++) {
      colCeldas[A][B] = blanco; // les damos el color blanco
    }
  }
  celdas(); 
}

void celdas() {
  image(img, 0, 0);
  for (int B = 0; B < fila; B++) { 
    for (int A = 0; A < cols; A++) {
      int x = derecha + A * tamcel;
      int y = B * tamcel;

      fill(colCeldas[A][B]);
      rect(x, y, tamcel, tamcel);

      float figuraX = x + tamcel / 2;
      float figuraY = y + tamcel / 2;

      fill(negro);

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
}

void draw() {
  // draw está vacío poruqe no se necesita actualización continua
}

void mousePressed() {
  // Cambiamos el color de todas las celdas a colores aleatorios
  for (int B = 0; B < fila; B++) {
    for (int A = 0; A < cols; A++) {
      colCeldas[A][B] = color(random(255), random(255), random(255));
    }
  }
  celdas(); 
}

void keyPressed() {
  for (int B = 0; B < fila; B++) {
    for (int A = 0; A < cols; A++) {
      colCeldas[A][B] = resetColor();
    }
  }
  celdas(); 
}


color resetColor() {
  return blanco;
}
