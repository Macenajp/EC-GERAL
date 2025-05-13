// Em andamento ainda


int telaAtual = 0;
PFont font;
PImage arvore;
boolean telaInicial = true;

boolean corVerdeMenu = false;
boolean corVerdeVideos = false;
boolean corVerdeLivros = false;
boolean corVerdeHistorias = false;
boolean corVerdeJogos = false;

PImage[] capas = new PImage[5];
PImage[][] paginasLivros = new PImage[5][];                 // até 5 livros, cada um com várias páginas
int livroSelecionado = -1;                                 // Significa que nenhum livro foi selecionado
float scrollY = 0;

void setup() {
  size(1366,768);
  font = createFont("Arial", 16);
  textFont(font);

  // Capa dos livros:
  for (int i = 0; i < capas.length; i++) {
    capas[i] = loadImage("capa" + (i+1) + ".jpg");
  }

  // Carregar páginas de exemplo para cada livro (3 páginas por livro como exemplo)
  for (int i = 0; i < paginasLivros.length; i++) {
    paginasLivros[i] = new PImage[3];
    for (int j = 0; j < 3; j++) {
      paginasLivros[i][j] = loadImage("livro" + (i+1) + "_pag" + (j+1) + ".jpg");
    }
  }
}

void draw() {
  background(255);

  if (telaAtual==0) tela0();
  if (telaAtual==1) tela1();
  if (telaAtual==2) tela2();
  if (telaAtual==3) tela3();
  if (telaAtual==4) tela4();
  if (telaAtual==5) tela5();
  if (telaAtual==6) tela6();
  if (telaAtual==7) telaLivros();
  if (telaAtual==8) leituraLivro();

  int x = mouseX;
  int y = mouseY;

  println("Coordenadas do mouse: X = " + x + ", Y = " + y); 

  if (corVerdeMenu) { 
    fill(117, 165, 104);
    rect(100, 140, 180, 30, 20);
    fill(255); textAlign(LEFT, CENTER); textSize(16);
    text("Menu Principal", 50, 140);
  }

  if (corVerdeVideos) { 
    fill(117, 165, 104);
    rect(100, 180, 180, 30, 20);
    fill(255); textAlign(LEFT, CENTER); textSize(16);
    text("Vídeos", 55, 180);
  }

  if (corVerdeLivros) { 
    fill(117, 165, 104);
    rect(100, 220, 180, 30, 20);
    fill(255); textAlign(LEFT, CENTER); textSize(16);
    text("Livros", 55, 220);
  }

  if (corVerdeHistorias) { 
    fill(117, 165, 104);
    rect(100, 260, 180, 30, 20);
    fill(255); textAlign(LEFT, CENTER); textSize(16);
    text("Historias", 55, 260);
  }

  if (corVerdeJogos) { 
    fill(117, 165, 104);
    rect(100, 300, 180, 30, 20);
    fill(255); textAlign(LEFT, CENTER); textSize(16);
    text("Jogos", 55, 300);
  }
}

void telaLivros() {
  background(240);
  textAlign(CENTER);
  textSize(24);
  fill(0);
  text("Selecione um livro", width/2, 50);

  for (int i = 0; i < capas.length; i++) {
    int col = i % 3;
    int row = i / 3;
    int x = 400 + col * 200;
    int y = 100 + row * 300;
    image(capas[i], x, y, 150, 200);
  }
}

void leituraLivro() {
  background(255);
  if (livroSelecionado >= 0 && livroSelecionado < paginasLivros.length) {
    for (int i = 0; i < paginasLivros[livroSelecionado].length; i++) {
      image(paginasLivros[livroSelecionado][i], 300, i * 800 - (int)scrollY, 700, 800);
    }
  }
}

void mouseWheel(MouseEvent event) {
  if (telaAtual == 8 && livroSelecionado >= 0) {
    float e = event.getCount();
    scrollY += e * 50;
    scrollY = constrain(scrollY, 0, paginasLivros[livroSelecionado].length * 800 - height);
  }
}
