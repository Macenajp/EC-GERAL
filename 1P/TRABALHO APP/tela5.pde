void tela5() {
  
  fill(255);     
  rect(-1, 0, width + 1400, height + 800);
  fill(100, 150, 70); textSize(28);
  text("EXÍMIO", 50, 50);;
  textSize(16);
  
  fill(117, 165, 104); // Verde do botão ativo
  rect(100, 140, 180, 30, 20);
  fill(255); textAlign(LEFT, CENTER); textSize(16);
  text("Menu Principal", 50, 140);
  image(casacinza, 30, 140);
  
  fill(100); textSize(14);
  text("Vídeos", 55, 180);
  image(playcinza, 30, 180);
  text("Livros", 55, 220);
  image(livrocinza, 30, 220);
  text("HQ", 55, 260);
  image(historiacinza, 30, 260);
  text("Jogos", 55, 300);
  image(controlecinza, 30, 300);
  text("SAA",80,730);
  ellipse(70, 730, 6, 6);
  stroke(180);
  line(10, height - 55, 170, height - 55);
  
  // Fundo da tela 3
if (mousePressed) {
    if ((mouseX > 10) && (mouseX < 190) && (mouseY > 125) && (mouseY < 155)) telaAtual = 1;
    if ((mouseX > 55) && (mouseX < 110) && (mouseY > 165) && (mouseY < 190)) telaAtual = 2;
    if ((mouseX > 55) && (mouseX < 100) && (mouseY > 200)&& (mouseY < 225)) telaAtual = 3;
    if ((mouseX > 55) && (mouseX < 110) && (mouseY > 250)&& (mouseY < 275)) telaAtual = 4;
    if ((mouseX > 60) && (mouseX < 110) && (mouseY > 715)&& (mouseY < 740)) telaAtual = 5;
    if ((mouseX > 10) && (mouseX <  195) && (mouseY > 285) && (mouseY < 316)) telaAtual = 6;
    
}
  
  
  
  
  fill(230); stroke(150); strokeWeight(2);
  rect(width/2 + 90, 350, 600, 500, 20);
  
  fill(230); stroke(150); strokeWeight(2);
  rect(width/2 + 90, 360, 380, 65, 20);
  
  fill(0);
  textSize(36);
  text("SAA", width/2 + 60, 185);
  
  fill(0);
  textFont(createFont("Arial", 12));
  text("Sistema de Atendimento ao Aluno", width/2, 215);
  
  if (botão == true) {  // se o mouse estiver sobre o botão ele fica verde
    fill(#3CDB7A);
  } else {  //se não, ignora
    noFill();
  } 
  textSize(48);  //SAA texto/'botão'
  text("Relatar problema", width/2 - 90, 360);
}

void mouseMoved() { //verifica se o mouse está sobre o botão
  checkButtons(); 
}
  
void checkButtons() {  //área de toque do mouse
  if (mouseX > 585 && mouseX < 965  && mouseY > 325 && mouseY <395) {
    botão = true;   
  } else {
    botão = false;
  }
}
