void tela1() {

 //titulo
  // Fundo da tela 1
  fill(255);     
  rect(-1, 0, width + 1400, height + 800);
  fill(100, 150, 70); textSize(28);
  text("EXÍMIO", 50, 50);;
  textSize(16);
  
//botao MENU PRINCIPAL
    // Menu lateral
  fill(117, 165, 104); // Verde do botão ativo
  rect(100, 140, 180, 30, 20);
  fill(255); textAlign(LEFT, CENTER); textSize(16);
  text("Menu Principal", 50, 140);

  // Opções do menu
  fill(100); textSize(14);
  text("Vídeos", 55, 180);
  text("Livros", 55, 220);
  text("Histórias", 55, 260);
  text("Jogos", 55, 300);
  text("SAA",80,730);
  ellipse(70, 730, 6, 6);
  stroke(180);
  line(10, height - 55, 170, height - 55);
  
 // Caixa de calendário
  fill(230); stroke(150); strokeWeight(2);
  rect(500, 200, 600, 200, 20);
  fill(80); noStroke(); textSize(16);
  text("Calendário", 250, 85);

  // Caixa de recomendações
  fill(230); stroke(200); strokeWeight(1);
  rect(975, 450, 600, 200, 20);
  fill(80); noStroke(); text("Recomendações", 710, 330);

  // Interações válidas na tela 1
  if (mousePressed) {
    if ((mouseX > 10) && (mouseX < 190) && (mouseY > 125) && (mouseY < 155)) telaAtual = 1;
    if ((mouseX > 55) && (mouseX < 110) && (mouseY > 165) && (mouseY < 190)) telaAtual = 2;
    if ((mouseX > 55) && (mouseX < 100) && (mouseY > 200)&& (mouseY < 225)) telaAtual = 3;
    if ((mouseX > 55) && (mouseX < 120) && (mouseY > 230)&& (mouseY < 255)) telaAtual = 4;
    if ((mouseX > 60) && (mouseX < 115) && (mouseY > 715)&& (mouseY < 740)) telaAtual = 5;
    if ((mouseX > 10) && (mouseX <  195) && (mouseY > 285) && (mouseY < 316)) telaAtual = 6;
}
}

void mousePressed() { 
    corVerdeMenu = false;
    corVerdeVideos = false;
    corVerdeLivros = false;
    corVerdeHistorias = false;
    corVerdeJogos = false;
    
    if ((mouseX > 10) && (mouseX < 190) && (mouseY > 125) && (mouseY < 155)) {
     corVerdeMenu = true;
    }
    if ((mouseX > 10) && (mouseX < 190) && (mouseY > 165) && (mouseY<195)) {
     corVerdeVideos = true;
    }
    if ((mouseX > 10) && (mouseX < 190) && (mouseY > 205) && (mouseY < 235)) {
      corVerdeLivros = true;
    }
    if ((mouseX > 10) && (mouseX < 190) && (mouseY > 245) && (mouseY < 275)) {
      corVerdeHistorias = true;
    }
    if ((mouseX > 10) && (mouseX < 190) && (mouseY > 285) && (mouseY < 315)) {
      corVerdeJogos = true;
    }
}
