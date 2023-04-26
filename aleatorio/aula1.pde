void setup() {
    size(300, 300); //tamanho da tela
    stroke(255); //cor da borda
    background(192, 64, 0); //cor do fundo da tela em RGB
}

void draw() {
    background(0,0,0); // Fundo preto
    fill(0,0,0);
    rect(20, 50, 260, 30);
    fill(0,0,0);
    ellipse(65, 65, 40, 40);
    fill(0,0,0);
    ellipse(195, 195, 40, 40);

    fill(255, 255, 255);
    triangle(70, 220, 230, 220, 150, 50);
    fill(0, 0, 0);
    ellipse(180, 190, 60, 60);
    ellipse(120, 190, 60, 60);
    fill(255, 0, 255, 50);
    ellipse(180, 190, 60, 60);
    ellipse(120, 190, 60, 60);
    fill(255,0,0); //cor vermelha
    ellipse(150, 150, 80, 120);
}
