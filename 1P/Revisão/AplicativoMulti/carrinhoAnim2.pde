// Projeto adaptado e feito em cima de um extremamente básico em pouco tempo, e sem conhecer a linguagem.
// Agora triplicado e com animação básica

int raio = 45;
color corPreto = #000000;
float anguloRotacao = 0;

void setup() {
  size(900, 480);
}

void draw() {
  background(#4D4C4C);
  
// Atualiza a rotação pra animar:
  anguloRotacao += 0.05;
  
// Triplica o desenho:
  for (int i = 0; i < 3; i++) {
    pushMatrix();
    translate(i * 300, 0); // Desloca cada carro 300 pixels para a direita
    
    // Desenha o carro
    desenharCarro();
    
    popMatrix();
  }
}

void desenharCarro() {
// Estrutura (baixo):
  fill(#FFFFFF);
  rect(120, 250, 210, 65);
  
// Estrutura (cima):
  fill(#FFFFFF);
  rect(175, 210, 90, 40);
  
// Rodas (com rotação):
  desenharRodaComRotacao(160, 320, raio);
  desenharRodaComRotacao(287, 320, raio);
  
// Escapamento:
  rect(108, 305, 12, 7);
  
// Spoiler:
  rect(120, 240, 17, 10);
  
// Janelas:
  rect(178, 214, 83, 35);
}

void desenharRodaComRotacao(float x, float y, float diametro) {
  pushMatrix();
  translate(x, y);
  rotate(anguloRotacao);
  
  fill(0);
  ellipse(0, 0, diametro, diametro);
  
// Detalha para a animação:
  fill(255);
  rect(-diametro/4, -5, diametro/2, 10);
  
  popMatrix();
}
