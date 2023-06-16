color azulClaro = color(135, 206, 250);
color laranjaPastel = color(255, 218, 185);
color laranjaPastelEscuro = color(235, 156, 82, 50);
color vermelhoMedio = color(148, 26, 28);
color verdeEscuro = color(0, 100, 0);
color marrom = color(75, 54, 33);
color ambiente = color(#FAF9B2);
void setup() {
    size(1024, 720, P3D);
    background(azulClaro);
    noStroke();
}

void retangulo(int x, int y, int w, int h, color c) {
    fill(c);
    rect(x, y, w, h);
}

void draw() {
    ambientLight(155, 155, 155);
    directionalLight(250, 250, 176, -1, -1, 1);
    spotLight(0, 102, 0, 80, 20, 40, -1, 0, 0, PI/2, 2);
    if (mouseX < 400) {
        pointLight(255, 0, 0, mouseX, mouseY, 36);
    }
    else {
        pointLight(0, 0, 255, mouseX, mouseY, 36);
    }

    int x1, x2, x3, y1, y2, y3;
    int x, y, altura, largura;
    // predio
    x = 224;
    y = 70;
    altura = 650;
    largura = 350;
    retangulo(x, y, largura, altura, laranjaPastel);

    //janelas
    altura = 60; //espaço entre a janela de baixo sera 40;
    largura = 120; //espaço entre a janela do lado sera 30;
    x += 40;
    y += 30;
    retangulo(x, y, largura, altura, vermelhoMedio);
    x1 = x + largura / 2;
    x2 = x1;
    y1 = y;
    y2 = y + altura;
    line(x1, y1, x2, y2);
    for(int i = 0; i < 4; i++) {
        y += 100;
        retangulo(x, y, largura, altura, laranjaPastelEscuro);
        
    }

    x += 150;
    y = 100;
    retangulo(x, y, largura, altura, vermelhoMedio);
    x1 = x + largura / 2;
    x2 = x1;
    y1 = y;
    y2 = y + altura;
    line(x1, y1, x2, y2);
    for(int i = 0; i < 3; i++) {
        y += 100;
        retangulo(x, y, largura, altura, laranjaPastelEscuro);
        
    }
    y += 100;
    retangulo(x, y, largura, altura, vermelhoMedio);
    x1 = x + largura / 2;
    x2 = x1;
    y1 = y;
    y2 = y + altura;
    line(x1, y1, x2, y2);
   
   //porta  
    altura = 120;
    y += 100;
    retangulo(x, y, largura, altura, vermelhoMedio);
    x1 = x + largura / 2;
    x2 = x1;
    y1 = y;
    y2 = y + altura;
    line(x1, y1, x2, y2);

    y = (y1 + y2) / 2;
    x = x1 - 10;
    fill(255, 255, 255);
    ellipse(x, y, 10, 10);
    y = (y1 + y2) / 2;
    x = x2 + 10;
    fill(255, 255, 255);
    ellipse(x, y, 10, 10);
   
   
   
   
   
    //tronco
    x = width - (width / 4);
    y = height - (height / 8);
    altura =  height / 8;
    largura = 30;
    retangulo(x, y, largura, altura, marrom);

   
   
   
   
    //folhas
   
    x1 = width - (width / 4) - 90;
    y1 = height - (height / 8);

    x2 = width - (width / 4) + 120;
    y2 = height - (height / 8);

    x3 = width - (width / 4) + 15;
    y3 = height - (height / 8) - 75;
    fill(verdeEscuro);
    triangle(x1, y1, x2, y2, x3, y3);

    y1 -= 35; x1 += 20;
    y2 -= 35; x2 -= 20;
    y3 -= 35;
    fill(verdeEscuro);
    triangle(x1, y1, x2, y2, x3, y3);

    y1 -= 35; x1 += 20;
    y2 -= 35; x2 -= 20;
    y3 -= 35;
    fill(verdeEscuro);
    triangle(x1, y1, x2, y2, x3, y3);

    y1 -= 35; x1 += 20;
    y2 -= 35; x2 -= 20;
    y3 -= 35;
    fill(verdeEscuro);
    triangle(x1, y1, x2, y2, x3, y3);
    save("2023_1FelipeCamiloSoares_Predio.png");
}
