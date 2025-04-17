float angulo = 0;

void setup() {
  size(900, 480);
}

void draw() {
  background(#4D4C4C);
  angulo += 0.1; // Gira as rodas
  
  // Desenha 3 carros (um a cada 300 pixels)
  for (int i = 0; i < 3; i++) {
    desenharCarro(i * 300, angulo);
  }
}

void desenharCarro(int xOffset, float rotacao) {
  pushMatrix();
  translate(xOffset, 0);
  
  // Corpo do carro (retângulos estáticos)
  fill(255);
  rect(120, 250, 210, 65);  // Base
  rect(175, 210, 90, 40);     // Teto
  rect(178, 214, 83, 35);     // Janela
  rect(108, 305, 12, 7);      // Escapamento
  rect(120, 240, 17, 10);     // Spoiler
  
  // Rodas girando
  desenharRoda(160, 320, rotacao);
  desenharRoda(287, 320, rotacao);
  
  popMatrix();
}

void desenharRoda(int x, int y, float rotacao) {
  pushMatrix();
  translate(x, y);
  rotate(rotacao);
  fill(0);
  circle(0, 0, 45);
  popMatrix();
}
