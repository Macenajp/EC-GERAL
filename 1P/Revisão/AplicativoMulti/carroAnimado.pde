float angulo = 0;
float posicaoCarro = 0;

void setup() {
  size(720, 480);
  posicaoCarro = width/2 - 150;
}

// Background e posicionamento do carro:
void draw() {
  background(#242222);
  angulo += 0.1;
  
  posicaoCarro += 1;
  
  if (posicaoCarro > width + 150) {
    posicaoCarro = -210;
  }
  
  carro(posicaoCarro, angulo);
}

void carro(float xOffset, float rotacao) {
  pushMatrix();
  translate(xOffset, 0);
  
  // Corpo do carro
  fill(#1F5CAA);
  rect(120, 250, 210, 65, 5);
  rect(175, 210, 90, 40, 3);
  
  // Janelas
  fill(#A0D6FF);
  rect(178, 214, 38, 35, 2);
  rect(223, 214, 38, 35, 2);
  
  // Escapamento:
  fill(#333333);
  rect(108, 305, 12, 7);
  
  // Aerofólio:
  fill(#333333);
  rect(120, 240, 17, 10, 3);

  // Faróis
  fill(#FFFF00);
  ellipse(130, 265, 15, 10);
  ellipse(320, 265, 15, 10);
  
  // Rodas
  roda(160, 320, rotacao);
  roda(287, 320, rotacao);
  
  popMatrix();
}

void roda(int x, int y, float rotacao) {
  pushMatrix();
  translate(x, y);
  rotate(rotacao);
  
  fill(0);
  circle(0, 0, 45);
  
  fill(80);
  circle(0, 0, 30);
  popMatrix();
}
