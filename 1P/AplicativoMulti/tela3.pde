void tela3() {
  // Mantenha todo o menu lateral original
  fill(255);     
  rect(-1, 0, width + 1400, height + 800);
  fill(100, 150, 70); textSize(28);
  text("EXÍMIO", 50, 50);;
  textSize(16);

  fill(117, 165, 104);
  rect(100, 140, 180, 30, 20);
  fill(255); textAlign(LEFT, CENTER); textSize(16);
  text("Menu Principal", 50, 140);
  
  fill(100); textSize(14);
  text("Vídeos", 55, 180);
  text("Livros", 55, 220);
  text("Histórias", 55, 260);
  text("Jogos", 55, 300);
  text("SAA",80,730);
  ellipse(70, 730, 6, 6);
  stroke(180);
  line(10, height - 55, 170, height - 55);
  
  // Sessão dos livros:
  int inicioX = 250;
  int inicioY = 100;
  
  // Capas dos livros lado a lado
  if (livro1 != null) image(livro1, inicioX, inicioY, 150, 200);
  if (livro2 != null) image(livro2, inicioX + 200, inicioY, 150, 200);
  if (livro3 != null) image(livro3, inicioX + 400, inicioY, 150, 200);
  if (livro4 != null) image(livro4, inicioX + 600, inicioY, 150, 200);
  if (livro5 != null) image(livro5, inicioX + 800, inicioY, 150, 200);
  if (livro6 != null) image(livro6, inicioX, inicioY + 250, 150, 200);

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
