// Feito em 10 minutos sem conhecer a linguagem.

int xp1 = 160, yp1 = 320;
int xp2 = 287, yp2 = 320;
int raio = 45;

color corPreto = #000000;

// Display:
size(900, 480);
background(#4D4C4C);

// Estrutura (baixo):
fill(#FFFFFF);
rect(120, 250, 210, 65);

// Estrutura (cima):
fill(#FFFFFF);
rect(175, 210, 90, 40);

// Rodas:
circle(xp1, yp1, raio);
circle(xp2, yp2, raio);

// Escapamento:
rect(108, 305, 12, 7);

// Spoiler:
rect(120, 240, 17, 10);

// Janelas:
rect(178, 214, 83, 35);
