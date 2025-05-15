int telaAtual = 0;
PFont font;
PImage arvore;
boolean telaInicial = true;

boolean corVerdeMenu = false;
boolean corVerdeVideos = false;
boolean corVerdeLivros = false;
boolean corVerdeHistorias = false;
boolean corVerdeJogos = false;  

// Variáveis para os livros
String link1 = "https://leiturinha.com.br/blog/wp-content/uploads/2020/07/leiturinha_e-book_pequeno_consciente_01.pdf";                      //Livro -> Um Planeta Melhor Começa em Casa
String link2 = "https://br.boell.org/sites/default/files/2022-11/a-magica-das-sementes.pdf";                                                 //Livro -> A Mágica das Sementes
String link3 = "https://smastr16.blob.core.windows.net/cea/2013/10/choque-maluco.pdf";                                                       //Livro -> Choque Maluco
String link4 = "https://www.ifbaiano.edu.br/unidades/serrinha/files/2023/06/Joao-Vesi-em-aventuras-da-Educacao-Ambiental.pdf";               //Livro -> João e Vesi em: Aventuras da Educacao Ambiental
String link5 = "https://sc.movimentoods.org.br/wp-content/uploads/2021/01/E-book-Projeto-Educacao-Criancas-Jovens-Sustentabilidade.pdf";     //Livro -> 17 formas de tornar o mundo mais sustentável
String link6 = "https://leiturinha.com.br/blog/wp-content/uploads/2022/05/e-book_eco-infancia.pdf";                                          //Livro -> Eco Infância

PImage livro1, livro2, livro3, livro4, livro5, livro6;                                                                                       

void setup(){
  size(1366,768);
  font = createFont("Arial", 16);
  textFont(font);
  
  // Carregar capas (coloque estas imagens na pasta /data/)
  livro1 = loadImage("livro1.png");
  livro2 = loadImage("livro2.png");
  livro3 = loadImage("livro3.png"); 
  livro4 = loadImage("livro4.png");
  livro5 = loadImage("livro5.png");
  livro6 = loadImage("livro6.png");
}
  
void draw() {
  background(255);
  
  if (telaAtual == 0) tela0();
  if (telaAtual == 1) tela1();
  if (telaAtual == 2) tela2();
  if (telaAtual == 3) tela3();
  if (telaAtual == 4) tela4();
  if (telaAtual == 5) tela5();
  if (telaAtual == 6) tela6();
  
  int x = mouseX;
  int y = mouseY;
  
  println("Coordenadas do mouse: X = " + x + ", Y = " + y); 
  
  if (corVerdeMenu) { 
    fill(117, 165, 104); // Verde do botão ativo
    rect(100, 140, 180, 30, 20);
    fill(255); textAlign(LEFT, CENTER); textSize(16);
    text("Menu Principal", 50, 140);
  }
  
  if (corVerdeVideos) { 
    fill(117, 165, 104); // Verde do botão ativo
    rect(100, 180, 180, 30, 20);
    fill(255); textAlign(LEFT, CENTER); textSize(16);
    text("Vídeos", 55, 180);
  }
  
  if (corVerdeLivros) { 
    fill(117, 165, 104); // Verde do botão ativo
    rect(100, 220, 180, 30, 20);
    fill(255); textAlign(LEFT, CENTER); textSize(16);
    text("Livros", 55, 220);
  }
  if (corVerdeHistorias) { 
    fill(117, 165, 104); // Verde do botão ativo
    rect(100, 260, 180, 30, 20);
    fill(255); textAlign(LEFT, CENTER); textSize(16);
    text("Historias", 55, 260);
  }
  if (corVerdeJogos) { 
    fill(117, 165, 104); // Verde do botão ativo
    rect(100, 300, 180, 30, 20);
    fill(255); textAlign(LEFT, CENTER); textSize(16);
    text("Jogos", 55, 300);
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
    
    // Específico para a tela 3:
    if (telaAtual == 3) {       
        int inicioX = 250;
        int inicioY = 100;

        // Livro 1
        if (mouseX > inicioX && mouseX < inicioX + 150 && mouseY > inicioY && mouseY < inicioY + 200) {                      //Livro -> Um Planeta Melhor Começa em Casa
        link(link1);
        }
        // Livro 2
        if (mouseX > inicioX + 200 && mouseX < inicioX + 350 && mouseY > inicioY && mouseY < inicioY + 200) {                //Livro -> A Mágica das Sementes
        link(link2);
        }
        // Livro 3
        if (mouseX > inicioX + 400 && mouseX < inicioX + 550 && mouseY > inicioY && mouseY < inicioY + 200) {                //Livro -> Choque Maluco
        link(link3);
        }
        // Livro 4
        if (mouseX > inicioX + 600 && mouseX < inicioX + 750 && mouseY > inicioY && mouseY < inicioY + 200) {                //Livro -> João e Vesi em: Aventuras da Educacao Ambiental
        link(link4);
        }
        // Livro 5
        if (mouseX > inicioX + 800 && mouseX < inicioX + 950 && mouseY > inicioY && mouseY < inicioY + 200) {                //Livro -> 17 formas de tornar o mundo mais sustentável
        link(link5);
        }
        // Livro 6 
        if (mouseX > inicioX && mouseX < inicioX + 150 && mouseY > inicioY + 250 && mouseY < inicioY + 450) {                //Livro -> Eco Infância
         link(link6);
        }
    }
}
