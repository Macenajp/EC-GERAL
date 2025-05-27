void tela4() {
  
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
  
  // Fundo da tela 4
  noStroke();
  fill(255);  
  rect(776, 400, height+400, height-1);
  fill(0); text("HQ", 350, 50);

 
  if (mousePressed) {
    if ((mouseX > 10) && (mouseX < 190) && (mouseY > 125) && (mouseY < 155)) telaAtual = 1;
    if ((mouseX > 55) && (mouseX < 110) && (mouseY > 165) && (mouseY < 190)) telaAtual = 2;
    if ((mouseX > 55) && (mouseX < 100) && (mouseY > 200)&& (mouseY < 225)) telaAtual = 3;
    if ((mouseX > 55) && (mouseX < 110) && (mouseY > 250)&& (mouseY < 275)) telaAtual = 4;
    if ((mouseX > 60) && (mouseX < 110) && (mouseY > 715)&& (mouseY < 740)) telaAtual = 5;
    if ((mouseX > 10) && (mouseX <  195) && (mouseY > 285) && (mouseY < 316)) telaAtual = 6;
  }


int inicioX = 400;
  int inicioY = 200;

// Capas dos livros lado a lado
  if (HQ7 != null) image(HQ7, inicioX, inicioY, 150, 200);
  if (HQ2 != null) image(HQ2, inicioX + 200, inicioY, 150, 200);
  if (HQ3 != null) image(HQ3, inicioX + 400, inicioY, 150, 200);
  if (HQ4 != null) image(HQ4, inicioX + 600, inicioY, 150, 200);
  if (HQ5 != null) image(HQ5, inicioX + 800, inicioY, 150, 200);
  if (HQ6 != null) image(HQ6, inicioX, inicioY + 250, 150, 200);


  
  // Interação do mouse com os livros:
  if (mouseX > inicioX && mouseX < inicioX + 150 && mouseY > inicioY && mouseY < inicioY + 200) {
    noFill();
  }
  if (mouseX > inicioX + 200 && mouseX < inicioX + 250 && mouseY > inicioY && mouseY < inicioY + 200) {
    noFill();
  }
    if (mouseX > inicioX + 400 && mouseX < inicioX + 550 && mouseY > inicioY && mouseY < inicioY + 200) {
    noFill();
  }
    if (mouseX > inicioX + 600 && mouseX < inicioX + 750 && mouseY > inicioY && mouseY < inicioY + 200) {
    noFill();
  }  
    if (mouseX > inicioX + 800 && mouseX < inicioX + 950 && mouseY > inicioY && mouseY < inicioY + 200) {
  }   
    if (mouseX > inicioX && mouseX < inicioX + 150 && mouseY > inicioY + 250 && mouseY < inicioY + 250 + 200) {
    noFill();
}

    
// Verifica o clique nas capas:
    if (mouseX > inicioX + 50 && mouseX < inicioX + 150 && mouseY > inicioY && mouseY < inicioY + 200){
    }
    if (mouseX > inicioX + 200 && mouseX < inicioX + 350 && mouseY > inicioY && mouseY < inicioY + 200) {
    }
    if (mouseX > inicioX + 400 && mouseX < inicioX + 550 && mouseY > inicioY && mouseY < inicioY + 200) {
    }
    if (mouseX > inicioX + 600 && mouseX < inicioX + 750 && mouseY > inicioY && mouseY < inicioY + 200) {
    }
    if (mouseX > inicioX + 800 && mouseX < inicioX + 950 && mouseY > inicioY && mouseY < inicioY + 200) {
    }
    if (mouseX > inicioX && mouseX < inicioX + 150 && mouseY > inicioY + 250 && mouseY < inicioY + 450) {
}
}
