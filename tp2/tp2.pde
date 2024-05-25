// Martin Bonoris
// tp2 Comision 1
PImage img1, img2, img3, img4;
PFont f;
int x, x2, x3, x4, start, time, X, Y, anch, alt;
boolean ok;

void setup() {
  size(640, 480);
  img1 = loadImage("tlou.jpg");
  img2 = loadImage("tlou1.jpg");
  img3 = loadImage("tlou2.jpg");
  img4 = loadImage("tlou4.jpg");
  f = createFont("CambriaMath-48.vlw", 16, true);
  x = width;
  x2 = width;
  x3 = width;
  x4 = width;  
  ok = false;
  X= 100;
  Y= 100;
  anch= 310;
  alt= 200;
  img1.resize(640, 480);  img2.resize(640, 480);  img3.resize(640, 480);  img4.resize(640, 480);  
}

void reset() {
  x = width;
  x2 = width;
  x3 = width;
  x4 = width;
}

void draw() {
  fill(255, 0, 0);rect(X, Y, anch, alt);
  fill(255); triangle(346, 203, 202, 259, 202, 148);
  
  if(x> width) {
    x=-anch;
  }
  if (mousePressed) {
    if (mouseX>= X && mouseX< X+anch && mouseY> Y && mouseY< Y+alt ){
       ok = true;
       start = millis();
       reset();
    }
  }
  if (ok == true) {
    presentar();
    if (time > 60000) {
      ok = false;
    }
  }
}

void presentar() { 
  background(0);
  if (time > 0 && time < 14000) {
    image(img1, 0, 0);
    textFont(f, 36);
    fill(0);
    text("The Last Of Us es una serie basada en el juego de la desarrolladora Naughty Dog con el mismo nombre", x, 80);
      x= x-2;
  }
  if (time > 14000 && time < 30000) {
    image(img2, 0, 0);
    textFont(f, 36);
    fill(255);
    text("Esta cuenta con 9 episodios y se estima que se estrene la segunda temporada en el 2025", x2, 80);
    x2 = x2-2;
  }
  if (time > 30000 && time < 44000) {
    image(img3, 0, 0);
    textFont(f, 36);
    fill(255);
    text("Se estrenó en el año 2023 en la plataforma de streaming HBO", x3, 80);
    x3 = x3-2;
    }

  if (time > 44000 && time < 60000) {
    image(img4, 0, 0);
    textFont(f, 36);
    fill(0);
    text("La serie fue protagonizada por Pedro Pascal y Bella Ramsey", x4, 80);
    x4 = x4-2; 
  }
  time = millis() - start;
}
