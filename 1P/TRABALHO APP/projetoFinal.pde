void tela0(){
background(255);

// Título
  fill(117, 165, 104);
  textSize(48);
  text("EXÍMIO", width/2, 80);
  
  // Sublinhar "EXÍMIO"
  stroke(0);
  strokeWeight(2);
  line(width/2 - 120, 120, width/2 + 120, 120);
  
  // Subtítulo
  fill(117, 165, 104);
  textFont(createFont("Arial", 18));
  text("Plataforma de Estudos", width/2, 140);
  
  // Campos de entrada simulados
  fill(220);
  noStroke();
  rectMode(CENTER);
  rect(width/2, 190, 250, 30, 20); // E-mail
  rect(width/2, 230, 250, 30, 20); // Senha
  
  // Texto nos campos
  fill(100);
  textAlign(LEFT, CENTER);
  textFont(createFont("Arial", 16));
  text("E-mail", width/2 - 110, 190);
  text("Senha", width/2 - 110, 230);
  
  // Botões
  fill(117, 165, 104);
  rect(width/2 - 65, 280, 100, 35, 20); // Login
  rect(width/2 + 65, 280, 120, 35, 20); // Registrar-se
  
  // Texto dos botões
  fill(255);
  textAlign(CENTER, CENTER);
  text("Login", width/2 - 65, 280);
  text("Registrar-se", width/2 + 65, 280);
  
  
  
  
  
  if (mousePressed) {
    if ((mouseX > 565) && (mouseX < 665) && (mouseY > 260) && (mouseY < 300)) telaAtual = 1;
  }
}
