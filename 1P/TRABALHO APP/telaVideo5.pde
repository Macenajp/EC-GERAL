import processing.video.*;

Movie video;
Button btnPlay, btnPause, btnStop;

int telaAtual = 0;
PFont font;
PImage casacinza, casabranca, playcinza, playbranco, livrocinza, livrobranco, historiacinza, historiabranca,controlecinza, controlebranco, arvore, pesquisa, livro1, livro2, livro3, livro4, livro5, livro6, HQ7, HQ2, HQ3, HQ4, HQ5, HQ6,agua,ar,poluicãoLixo,poluiçãoNatureza,reciclagem;
boolean telaInicial = true;

boolean corVerdeMenu = false;
boolean corVerdeVideos = false;
boolean corVerdeLivros = false;
boolean corVerdeHistorias = false;
boolean corVerdeJogos = false;  

boolean botão = false;

String link1 = "https://leiturinha.com.br/blog/wp-content/uploads/2020/07/leiturinha_e-book_pequeno_consciente_01.pdf";                      //Livro -> Um Planeta Melhor Começa em Casa
String link2 = "https://br.boell.org/sites/default/files/2022-11/a-magica-das-sementes.pdf";                                                 //Livro -> A Mágica das Sementes
String link3 = "https://smastr16.blob.core.windows.net/cea/2013/10/choque-maluco.pdf";                                                       //Livro -> Choque Maluco
String link4 = "https://www.ifbaiano.edu.br/unidades/serrinha/files/2023/06/Joao-Vesi-em-aventuras-da-Educacao-Ambiental.pdf";               //Livro -> João e Vesi em: Aventuras da Educacao Ambiental
String link5 = "https://sc.movimentoods.org.br/wp-content/uploads/2021/01/E-book-Projeto-Educacao-Criancas-Jovens-Sustentabilidade.pdf";     //Livro -> 17 formas de tornar o mundo mais sustentável
String link6 = "https://leiturinha.com.br/blog/wp-content/uploads/2022/05/e-book_eco-infancia.pdf";                                          //Livro -> Eco Infância

String link7 = "https://issuu.com/marcosvaz/docs/gibi_arucarazinho_issuu";                      
String link8 = "file:///C:/Users/Ana/Downloads/Turma-da-Monica-Cuidando-do-Mundo.pdf";                                                 
String link9 = "https://issuu.com/marcosvaz/docs/gibi_curitiba_viva_bem_pdf_revis_o_6_ok";                                                       
String link10 = "https://issuu.com/marcosvaz/docs/gibi_prote_o_animal_-_issuu";               
String link11 = "https://www.guentherdesign.com.br/trabalho/hq-residuos-e-3rs";     
String link12 = "https://www.guentherdesign.com.br/trabalho/hq-meio-ambiente-passado-presente-e-futuro#foto-1";






void setup(){
  size(1366,768);
  font = createFont("Arial", 16);
  textFont(font);
  
  livro1 = loadImage("livro1.png");
  livro2 = loadImage("livro2.png");
  livro3 = loadImage("livro3.png"); 
  livro4 = loadImage("livro4.png");
  livro5 = loadImage("livro5.png");
  livro6 = loadImage("livro6.png");
  HQ7 = loadImage("HQ7.png");
  HQ2 = loadImage("HQ2.png");
  HQ3 = loadImage("HQ3.png");
  HQ4 = loadImage("HQ4.png"); 
  HQ5 = loadImage("HQ5.png");
  HQ6 = loadImage("HQ6.png");
  agua = loadImage("agua.png");
  poluicãoLixo= loadImage("poluicãoLixo.png");
  ar = loadImage("ar.png"); 
  poluiçãoNatureza = loadImage("poluiçãoNatureza.png");
  reciclagem = loadImage("reciclagem.png");
  
//video1
  video = new Movie(this, "videoplayback.mp4");
  btnPlay = new Button("Play", 630, 650, 100, 50);
  btnPause = new Button("Pause", 750, 650, 100, 50);
  btnStop = new Button("Voltar", 870, 650, 100, 50);
  
//video2
  video = new Movie(this, "videoplayback2.mp4");
  btnPlay = new Button("Play", 630, 650, 100, 50);
  btnPause = new Button("Pause", 750, 650, 100, 50);
  btnStop = new Button("Voltar", 870, 650, 100, 50);
  
  //video3
  video = new Movie(this, "videoplayback3.mp4");
  btnPlay = new Button("Play", 630, 650, 100, 50);
  btnPause = new Button("Pause", 750, 650, 100, 50);
  btnStop = new Button("Voltar", 870, 650, 100, 50);
  
  //video4
  video = new Movie(this, "videoplayback4.mp4");
  btnPlay = new Button("Play", 630, 650, 100, 50);
  btnPause = new Button("Pause", 750, 650, 100, 50);
  btnStop = new Button("Voltar", 870, 650, 100, 50);
  
  //video5
  video = new Movie(this, "videoplayback5.mp4");
  btnPlay = new Button("Play", 630, 650, 100, 50);
  btnPause = new Button("Pause", 750, 650, 100, 50);
  btnStop = new Button("Voltar", 870, 650, 100, 50);

  
  imageMode(CENTER);
  casacinza = loadImage("casacinza.png");
  casacinza.resize(30, 30);
  casabranca = loadImage("casabranca.png");
  casabranca.resize(30, 30);
  playcinza = loadImage("playcinza.png");
  playcinza.resize(30, 30);
  playbranco = loadImage("playbranco.png");
  playbranco.resize(30, 30);
  livrocinza = loadImage("livrocinza.png");
  livrocinza.resize(30, 30);
  livrobranco = loadImage("livrobranco.png");
  livrobranco.resize(27, 27);
  historiacinza = loadImage("historiacinza.png");
  historiacinza.resize(30, 30);
  historiabranca = loadImage("historiabranca.png");
  historiabranca.resize(30, 30);
  controlecinza = loadImage("controlecinza.png");
  controlecinza.resize(30, 30);
  controlebranco = loadImage("controlebranco.png");
  controlebranco.resize(30, 30);
  arvore = loadImage("arvore.png");
  arvore.resize(280, 380);
  pesquisa = loadImage("pesquisa.png");
  pesquisa.resize(30, 30);
  
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
  if (telaAtual==7) telavideo1();
  if (telaAtual==8) telavideo2();
  if (telaAtual==9) telavideo3();
  if (telaAtual==10) telavideo4();
  if (telaAtual==11) telavideo5();
  
  if (telaAtual==1) {
    image(arvore, 415, 520);
  
  

  
}
    
  
  int x = mouseX;
  int y = mouseY;
  
  println("Coordenadas do mouse: X = " + x + ", Y = " + y); 
  
  if (corVerdeMenu) { 
    fill(117, 165, 104); // Verde do botão ativo
    rect(100, 140, 180, 30, 20);
    fill(255); textAlign(LEFT, CENTER); textSize(16);
    text("Menu Principal", 50, 140);
    image(casabranca, 30, 140);
  }
  
  if (corVerdeVideos) { 
    fill(117, 165, 104); // Verde do botão ativo
    rect(100, 180, 180, 30, 20);
    fill(255); textAlign(LEFT, CENTER); textSize(16);
    text("Vídeos", 55, 180);
    image(playbranco, 30, 180);
  }
  
  if (corVerdeLivros) { 
    fill(117, 165, 104); // Verde do botão ativo
    rect(100, 220, 180, 30, 20);
    fill(255); textAlign(LEFT, CENTER); textSize(16);
    text("Livros", 55, 220);
    image(livrobranco, 30, 220);
  }
  if (corVerdeHistorias) { 
    fill(117, 165, 104); // Verde do botão ativo
    rect(100, 260, 180, 30, 20);
    fill(255); textAlign(LEFT, CENTER); textSize(16);
    text("HQ", 55, 260);
    image(historiabranca, 30, 260);
  }
  if (corVerdeJogos) { 
    fill(117, 165, 104); // Verde do botão ativo
    rect(100, 300, 180, 30, 20);
    fill(255); textAlign(LEFT, CENTER); textSize(16);
    text("Jogos", 55, 300);
    image(controlebranco, 30, 300);
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
    
if (telaAtual == 5)
  if (botão) { 
    link("mailto:suporteeximio@gmail.com?subject=Ajuda&body=Olá,%20preciso%20de%20suporte.");
  }



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



if (telaAtual == 4) {       
      int inicioX = 250;
      int inicioY = 100;

        // Livro 1
      if (mouseX > inicioX && mouseX < inicioX + 150 && mouseY > inicioY && mouseY < inicioY + 200) {                      //Livro -> Um Planeta Melhor Começa em Casa
        link(link7);
        }
        // Livro 2
        if (mouseX > inicioX + 200 && mouseX < inicioX + 350 && mouseY > inicioY && mouseY < inicioY + 200) {                //Livro -> A Mágica das Sementes
        link(link8);
        }
        // Livro 3
        if (mouseX > inicioX + 400 && mouseX < inicioX + 550 && mouseY > inicioY && mouseY < inicioY + 200) {                //Livro -> Choque Maluco
        link(link9);
        }
        // Livro 4
        if (mouseX > inicioX + 600 && mouseX < inicioX + 750 && mouseY > inicioY && mouseY < inicioY + 200) {                //Livro -> João e Vesi em: Aventuras da Educacao Ambiental
        link(link10);
        }
        // Livro 5
        if (mouseX > inicioX + 800 && mouseX < inicioX + 950 && mouseY > inicioY && mouseY < inicioY + 200) {                //Livro -> 17 formas de tornar o mundo mais sustentável
        link(link11);
        }
        // Livro 6 
        if (mouseX > inicioX && mouseX < inicioX + 150 && mouseY > inicioY + 250 && mouseY < inicioY + 450) {                //Livro -> Eco Infância
         link(link12);
        }
    }
    
    if (telaAtual == 2) {       
      

        // Livro 1
      if (mouseX > 225 && mouseX < 575 && mouseY > 100 && mouseY < 300) {                      //Livro -> Um Planeta Melhor Começa em Casa
        telaAtual = 7;
        }
        // Livro 2
        if (mouseX > 600 && mouseX < 950 && mouseY > 100 && mouseY < 300) {                //Livro -> A Mágica das Sementes
        telaAtual = 8;
        }
        // Livro 3
        if (mouseX > 975 && mouseX < 1325 && mouseY > 100 && mouseY < 300) {                //Livro -> Choque Maluco
        telaAtual = 9;
        }
        // Livro 4
        if (mouseX > 225 && mouseX < 575 && mouseY > 350 && mouseY < 550) {                //Livro -> João e Vesi em: Aventuras da Educacao Ambiental
        telaAtual = 10;
        }
        // Livro 5
        if (mouseX > 600 && mouseX < 950 && mouseY > 350 && mouseY < 550) {                //Livro -> 17 formas de tornar o mundo mais sustentável
        telaAtual = 11;
        }
      
    }
    
    if (telaAtual == 2) {       
      

        // Livro 1
      if (mouseX > 225 && mouseX < 575 && mouseY > 100 && mouseY < 300) {                      //Livro -> Um Planeta Melhor Começa em Casa
        telaAtual = 7;
        }
        // Livro 2
        if (mouseX > 600 && mouseX < 950 && mouseY > 100 && mouseY < 300) {                //Livro -> A Mágica das Sementes
        telaAtual = 8;
        }
        // Livro 3
        if (mouseX > 975 && mouseX < 1325 && mouseY > 100 && mouseY < 300) {                //Livro -> Choque Maluco
        telaAtual = 9;
        }
        // Livro 4
        if (mouseX > 225 && mouseX < 575 && mouseY > 350 && mouseY < 550) {                //Livro -> João e Vesi em: Aventuras da Educacao Ambiental
        telaAtual = 10;
        }
        // Livro 5
        if (mouseX > 600 && mouseX < 950 && mouseY > 350 && mouseY < 550) {                //Livro -> 17 formas de tornar o mundo mais sustentável
        telaAtual = 11;
        }
      
    }
    
     if (telaAtual == 7) {       
      

    println("MouseX: " + mouseX + " MouseY: " + mouseY);
  if (btnPlay.isClicked(mouseX, mouseY)) {
    println("Botão Play clicado");
    video.play();
  }
  if (btnPause.isClicked(mouseX, mouseY)) {
    println("Botão Pause clicado");
    video.pause();
  }
  if (btnStop.isClicked(mouseX, mouseY)) {
    println("Botão Stop clicado");
    video.stop();
    video.jump(0);
  } 
    }
    
    if (telaAtual == 8) {       
    println("MouseX: " + mouseX + " MouseY: " + mouseY);
  if (btnPlay.isClicked(mouseX, mouseY)) {
    println("Botão Play clicado");
    video.play();
  }
  if (btnPause.isClicked(mouseX, mouseY)) {
    println("Botão Pause clicado");
    video.pause();
  }
  if (btnStop.isClicked(mouseX, mouseY)) {
    println("Botão Stop clicado");
    video.stop();
    video.jump(0);
  }
    }
    
    if (telaAtual == 9) {       
    println("MouseX: " + mouseX + " MouseY: " + mouseY);
  if (btnPlay.isClicked(mouseX, mouseY)) {
    println("Botão Play clicado");
    video.play();
  }
  if (btnPause.isClicked(mouseX, mouseY)) {
    println("Botão Pause clicado");
    video.pause();
  }
  if (btnStop.isClicked(mouseX, mouseY)) {
    println("Botão Stop clicado");
    video.stop();
    video.jump(0);
  }
    }
    
    if (telaAtual == 10) {       
    println("MouseX: " + mouseX + " MouseY: " + mouseY);
  if (btnPlay.isClicked(mouseX, mouseY)) {
    println("Botão Play clicado");
    video.play();
  }
  if (btnPause.isClicked(mouseX, mouseY)) {
    println("Botão Pause clicado");
    video.pause();
  }
  if (btnStop.isClicked(mouseX, mouseY)) {
    println("Botão Stop clicado");
    video.stop();
    video.jump(0);
  }
    }
    
    if (telaAtual == 11) {       
    println("MouseX: " + mouseX + " MouseY: " + mouseY);
  if (btnPlay.isClicked(mouseX, mouseY)) {
    println("Botão Play clicado");
    video.play();
  }
  if (btnPause.isClicked(mouseX, mouseY)) {
    println("Botão Pause clicado");
    video.pause();
  }
  if (btnStop.isClicked(mouseX, mouseY)) {
    println("Botão Stop clicado");
    video.stop();
    video.jump(0);
  }
    }
    
}



// Método obrigatório para o vídeo funcionar
void movieEvent(Movie m) {
  m.read();
}

// Classe de Botão Simples
class Button {   
  String label;
  float x, y, w, h;
  
  Button(String label, float x, float y, float w, float h) {
    this.label = label;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  void display() {
    fill(255);
    rect(x, y, w, h, 20);
    fill(0);
    textAlign(CENTER, CENTER);
    text(label, x + w/2, y + h/2);
    
  
  }
  
  boolean isClicked(float mx, float my) {
   return mx > x && mx < x + w && my > y && my < y + h;
  }
}



  
