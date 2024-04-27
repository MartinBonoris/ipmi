// Martin Bonoris
// tp1 Comision 1
PImage pajarito;
void setup() {
  size(800,400);
 pajarito = loadImage("pajarito.jpg");
}

void draw() {
 fill(190,172,152); rect (388,-24,472,1090);
fill (179,166,157);rect (390,281,407,32);

fill(254,163,66);  triangle (581,303,576,275,597,278);//pata izquierda
  
fill(228,219,215); ellipse (605,126,105,89);
fill(231,220,215); ellipse (604,193,107,85);
ellipse (605,221,154,119);
fill (242,219,189);triangle (534,172,658,167,457,151);//adentro ala izquierda
fill (65,58,48);triangle (565,172,651,170,507,155);//adentro ala izquierda
fill(231,220,215);triangle (541,172,417,191,459,151);
fill (222,199,169); ellipse (605,110,96,59);
fill (242,219,189);triangle (723,165,682,179,554,162);//adentro ala derecha
fill (65,58,48);triangle (682,165,653,176,608,161);//adentro ala derecha
fill(231,220,215);triangle (813,196,666,178,723,164);
fill(254,163,66);triangle (651,263,619,241,658,228);//pata derecha
  fill(231,220,215);  triangle (647,247,636,235,658,228);//"
  fill(231,220,215);  triangle (637,245,618,239,638,234);//"
  fill (254,163,66); rect (645,254,8,19);
fill(231,220,215); ellipse (606,193,107,85);//pecho
fill (143,66,36); triangle (602,138,646,138,618,127);//arriba pico
fill (160,75,45); triangle (602,138,646,138,620,144);

fill (0,0,0); ellipse (587,126,20,8);
fill (0,0,0); triangle (576,124,597,124,585,119);
fill (0,0,0); triangle (642,129,655,126,650,118);
fill (0,0,0); ellipse (648,126,13,9);

fill (189,171,154);rect (395,291,421,126);
fill (214,205,200);rect (395,291,407,32);
noStroke ();

image(pajarito,0,0);
}
